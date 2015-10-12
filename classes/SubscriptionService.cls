@RestResource(urlMapping='/Subsc/Service/*')
global with sharing  class SubscriptionService {
        
    @HttpPut
    Global static Map<String, String> PutSubscriptionDetail (String porchUserId, String amountDue, String dateWentPastDue){
        RestResponse restResponse = RestContext.response;
        Map<String, String> response = new Map<String, String>();
        RestRequest req = RestContext.request;       
        String SubscriptionId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        system.debug(SubscriptionId+'Subscription Id');
        
        List <Contact> ContactList = new List <Contact> ();
        List <Account> AccountList = new list <Account> ();
        Schema.DescribeSObjectResult d = Schema.SObjectType.case;
        Map<String,Schema.RecordTypeInfo> rtMapByName = d.getRecordTypeInfosByName();
        
        try{
            List<Case> CheckSubscriptionCase = new List <Case> ();
        
            ContactList = [Select Id, Name, AccountId, Account_Company_Key__c, Porch_com_User_Key_ID__c FROM Contact WHERE Porch_com_User_Key_ID__c =: porchUserId];
            
            if (ContactList.size()>0 && (!string.Isblank(ContactList[0].Account_Company_Key__c) ||  !string.Isblank(ContactList[0].AccountId))) {
                AccountList = [Select Id, Name, Porch_com_Company_Key_ID__c From Account Where Id =:ContactList[0].AccountId OR Porch_com_Company_Key_ID__c =: ContactList[0].Account_Company_Key__c ];
            }
            
            Case SubscriptionCase = new Case ();
            SubscriptionCase.recordtypeid = rtMapByName.get('Delinquent Accounts').getRecordTypeId();
            SubscriptionCase.Origin = 'Braintree';
            SubscriptionCase.Sub_Key__c = SubscriptionId;
            SubscriptionCase.Current_Amount_Due__c = Decimal.valueof(amountDue);
            SubscriptionCase.Date_Went_Past_Due__c = Date.valueof(dateWentPastDue);
            SubscriptionCase.Subject = 'Mustard – ' ;
            SubscriptionCase.Description ='Contact:' + porchUserId+'\r\n' +'Subscription:'+ SubscriptionId+'\r\n' + 'Amount Due:'+ amountDue +'\r\n' +'Date Went Pass Due :'+ dateWentPastDue;
            SubscriptionCase.Unique_Key__c = SubscriptionId+Decimal.valueof(amountDue)+dateWentPastDue;
            if(ContactList.size()>0){
                Subscriptioncase.contactId= ContactList[0].id;
            }
            if(AccountList.size()>0){
                Subscriptioncase.AccountId= AccountList[0].id;
                SubscriptionCase.Subject = SubscriptionCase.Subject + AccountList[0].Name;
            }
            insert(Subscriptioncase);
            system.debug(SubscriptionCase+'<<<<<Case<<<<');
            
            response.put('success', ''+true);

        
            
        }catch(exception ex){
            system.debug(ex.getMessage()+'>>>><<<<<');
            response.put('message', ex.getMessage());
            response.put('errorCode', 'SFDC_PORCH_EXCEPTION');
            response.put('success', ''+false);
            If(ex.getMessage().contains('DUPLICATE_VALUE'))
            {
                restResponse.statusCode = 500;
            }else{
                restResponse.statusCode = 400;    
            }
            
        }
        return response;
    }
}