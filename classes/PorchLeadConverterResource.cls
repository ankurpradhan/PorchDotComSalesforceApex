@RestResource(urlMapping='/porch/Lead/convert/')
global with sharing class PorchLeadConverterResource {

	@HttpPost
    global static Map<String, String> doPost(String porchCompanyId, String porchUserId, String firstName,
                                            String lastName, String email, String mobilePhone, Datetime claimedDate, String accountSource){
        RestResponse restResponse = RestContext.response;
        Map<String, String> response = new Map<String, String>();

        List<Account> accounts = [SELECT Id, Name, Claimed_Date__c, AccountSource 
                                  FROM Account WHERE Porch_com_Company_Key_ID__c = :porchCompanyId LIMIT 1];

        if(accounts.size() > 0){
            Account account = accounts.get(0);
            
            if(string.isBlank(account.AccountSource) && string.isNotBlank(accountSource)){
                account.AccountSource = accountSource;
            }
            
            if(account.Claimed_Date__c == null){
                account.Claimed_Date__c = claimedDate;
            }
            
            update account;
            
            response.put('message', 'Account already exists for company. id=' + porchCompanyId);
            response.put('errorCode', 'SFDC_PORCH_ACCOUNT_ALREADY_EXISTS');
            response.put('success', ''+false);
            restResponse.statusCode = 400;
            return response;
        }

        String leadSoql = 'SELECT Id, LastName, OwnerId, Owner.Type FROM Lead '
                          + ' WHERE Porch_com_Company_Key_ID__c = :porchCompanyId ';
                                                
        if(string.isNotBlank(email)){
        	leadSoql = leadSoql + ' OR Email = :email ';                                       
        }
        
        leadSoql = leadSoql + ' LIMIT 1';
                                                
        List<Lead> leads = Database.query(leadSoql);

        if(leads.isEmpty()){
            response.put('message', 'No lead record found. id=' + porchCompanyId);
            response.put('errorCode', 'SFDC_PORCH_LEAD_NOT_FOUND');
            response.put('success', ''+false);
            restResponse.statusCode = 400;
            return response;
        }

        Lead lead = leads.get(0);

        if(lead.Owner.Type == 'Queue'){
        	lead.OwnerId = UserInfo.getUserId();
            System.debug('++++ lead has queue owner. setting the id to api user. id=' + UserInfo.getUserId());
            update lead;
        }

        Database.LeadConvert lc = new Database.LeadConvert();
        lc.setLeadId(lead.Id);
        lc.setDoNotCreateOpportunity(true);

        LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
        lc.setConvertedStatus(convertStatus.MasterLabel);
        Database.LeadConvertResult lcr;

        try{
            lcr = Database.convertLead(lc);

            if(lcr.isSuccess()){
                Account account = [SELECT Porch_com_Company_Key_ID__c, Claimed_Date__c, AccountSource FROM Account WHERE Id = :lcr.accountId];
                account.Porch_com_Company_Key_ID__c = porchCompanyId;
                account.Claimed_Date__c = claimedDate;

                if(string.isNotBlank(accountSource)){
                    account.AccountSource = accountSource;
                }

                update account;

                Contact contact = [SELECT FirstName, LastName, MobilePhone, Email,
                                   Porch_com_Company_Key_ID__c, Porch_com_User_Key_ID__c
                                   FROM Contact WHERE Id = :lcr.contactId];

                contact.Porch_com_Company_Key_ID__c = porchCompanyId;
                contact.Porch_com_User_Key_ID__c = porchUserId;

                if(string.isNotBlank(firstName)){
                    contact.FirstName = firstName;
                }

                if(string.isNotBlank(lastName)){
                    contact.LastName = lastName;
                }

                if(string.isNotBlank(email)){
                    contact.Email = email;
                }

                if(string.isNotBlank(mobilePhone)){
                    contact.MobilePhone = mobilePhone;
                }

            	update contact;
            }
            response.put('accountId', lcr.accountId);
            response.put('contactId', lcr.contactId);
	        response.put('success', ''+lcr.isSuccess());

            system.debug('+++++ leadId='+lead.Id + ', lcr.isSuccess()'+lcr.isSuccess());
        }catch(exception ex){
            system.debug('$$$$$ leadId='+lead.Id + ' not converted to account, ex='+ex);
			response.put('message', ex.getMessage());
			response.put('errorCode', 'SFDC_PORCH_EXCEPTION');
            response.put('success', ''+false);
            restResponse.statusCode = 400;
        }

        return response;
    }
}