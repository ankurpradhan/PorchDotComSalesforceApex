@isTest (SeeAllData=true)
public class Test_PorchMergeResource {    
    static testMethod void testHappyPath_account(){
        String masterCompanyId = 'masterCompanyKey';
        Account masterAccount = new Account(Porch_com_Company_Key_ID__c=masterCompanyId, Name='Master Company');
        insert masterAccount;
        
        String mergeCompanyId = 'mergeCompanyKey';
        Account mergeAccount = new Account(Porch_com_Company_Key_ID__c=mergeCompanyId, Name='Merge Company');
        insert mergeAccount;
        
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.httpMethod = 'PUT';
        req.requestURI = 'https://test.salesforce.com/services/apexrest/merge/' + masterAccount.Id;
        RestContext.request = req;
        RestContext.response = res;
        
        Map<String, String> result = PorchMergeResource.doPut(mergeAccount.Id);
        
        System.assert(result != null, 'response is null');
        System.assertEquals(result.get('success'), 'true');
        
        List<Account> masterAccounts = [SELECT Id FROM Account WHERE Id = :masterAccount.Id];
        System.assert(!masterAccounts.isEmpty());
        List<Account> mergedAccounts = [SELECT Id FROM Account WHERE Id = :mergeAccount.Id];
        System.assert(mergedAccounts.isEmpty());
    }    
    
    static testMethod void testHappyPath_contact(){
        Contact masterContact = new Contact(LastName='masterLast');
        insert masterContact;
        
        Contact mergeContact = new Contact(LastName='mergeLast');
        insert mergeContact;
        
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.httpMethod = 'PUT';
        req.requestURI = 'https://test.salesforce.com/services/apexrest/merge/' + masterContact.Id;
        RestContext.request = req;
        RestContext.response = res;
        
        Map<String, String> result = PorchMergeResource.doPut(mergeContact.Id);
        
        System.assert(result != null, 'response is null');
        System.assertEquals(result.get('success'), 'true');
        
        List<Contact> masterContacts = [SELECT Id FROM Contact WHERE Id = :masterContact.Id];
        System.assert(!masterContacts.isEmpty());
        List<Contact> mergedContacts = [SELECT Id FROM Contact WHERE Id = :mergeContact.Id];
        System.assert(mergedContacts.isEmpty());
    }
    
    static testMethod void testHappyPath_AccountAndContact(){
        String masterCompanyId = 'masterCompanyKey';
        Account masterAccount = new Account(Porch_com_Company_Key_ID__c=masterCompanyId, Name='Master Company');
        insert masterAccount;
        
        String mergeCompanyId = 'mergeCompanyKey';
        Account mergeAccount = new Account(Porch_com_Company_Key_ID__c=mergeCompanyId, Name='Merge Company');
        insert mergeAccount;
        
        Contact masterContact = new Contact(LastName='masterLast');
        masterContact.AccountId = masterAccount.Id;
        insert masterContact;
        
        Contact mergeContact = new Contact(LastName='mergeLast');
        mergeContact.AccountId = mergeAccount.Id;
        insert mergeContact;
        
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.httpMethod = 'PUT';
        req.requestURI = 'https://test.salesforce.com/services/apexrest/merge/' + masterAccount.Id;
        RestContext.request = req;
        RestContext.response = res;
        
        Map<String, String> result = PorchMergeResource.doPut(mergeAccount.Id);
        
        System.assert(result != null, 'response is null');
        System.assertEquals(result.get('success'), 'true');
        
        List<Account> masterAccounts = [SELECT Id FROM Account WHERE Id = :masterAccount.Id];
        System.assert(!masterAccounts.isEmpty());
        List<Account> mergedAccounts = [SELECT Id FROM Account WHERE Id = :mergeAccount.Id];
        System.assert(mergedAccounts.isEmpty());
        
        List<Contact> masterContacts = [SELECT Id FROM Contact WHERE Id = :masterContact.Id];
        System.assert(!masterContacts.isEmpty());
        List<Contact> mergedContacts = [SELECT Id, AccountId FROM Contact WHERE Id = :mergeContact.Id];
        System.assert(!mergedContacts.isEmpty());
        Contact fetchedMergedContact = mergedContacts.get(0);
        System.assertEquals(masterAccount.Id, fetchedMergedContact.AccountId);
    }
    
    static testMethod void testHappyPath_lead(){
        String masterCompanyId = 'masterCompanyKey';
        Lead masterLead = new Lead(Porch_com_Company_Key_ID__c=masterCompanyId, LastName='Kim', Company='Test Company', Status='Open',
                                 Phone='206-111-2222', State='WA', PostalCode='98107',
                                 Pro_Type__c='Carpenter', County__c='Jones', Pro_Status__c='Enrolled');
        insert masterLead;
        
        String mergeCompanyId = 'mergeCompanyKey';
        Lead mergeLead = new Lead(Porch_com_Company_Key_ID__c=mergeCompanyId, LastName='Kim', Company='Test Company', Status='Open',
                                 Phone='206-111-2222', State='WA', PostalCode='98107',
                                 Pro_Type__c='Carpenter', County__c='Jones', Pro_Status__c='Enrolled');
        insert mergeLead;
        
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.httpMethod = 'PUT';
        req.requestURI = 'https://test.salesforce.com/services/apexrest/merge/' + masterLead.Id;
        RestContext.request = req;
        RestContext.response = res;
        
        Map<String, String> result = PorchMergeResource.doPut(mergeLead.Id);
        
        System.assert(result != null, 'response is null');
        System.assertEquals(result.get('success'), 'true');
        
        List<Lead> masterLeads = [SELECT Id FROM Lead WHERE Id = :masterLead.Id];
        System.assert(!masterLeads.isEmpty());
        List<Lead> mergedLeads = [SELECT Id FROM Lead WHERE Id = :mergeLead.Id];
        System.assert(mergedLeads.isEmpty());
    }
    
    static testMethod void testInvalidObject(){
        String masterCompanyId = 'masterCompanyKey';
        Lead masterLead = new Lead(Porch_com_Company_Key_ID__c=masterCompanyId, LastName='Kim', Company='Test Company', Status='Open',
                                 Phone='206-111-2222', State='WA', PostalCode='98107',
                                 Pro_Type__c='Carpenter', County__c='Jones', Pro_Status__c='Enrolled');
        insert masterLead;
        
        String mergeCompanyId = 'mergeCompanyKey';
        Contact mergeContact = new Contact(LastName='Kim');
        insert mergeContact;
        
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.httpMethod = 'PUT';
        req.requestURI = 'https://test.salesforce.com/services/apexrest/merge/' + masterLead.Id;
        RestContext.request = req;
        RestContext.response = res;
        
        Map<String, String> result = PorchMergeResource.doPut(mergeContact.Id);
        
        System.assert(result != null, 'response is null');
        System.assertEquals(result.get('success'), 'false');
        System.assert(result.get('message') != null, 'message is null');
        System.assertEquals(result.get('errorCode'), 'SFDC_PORCH_EXCEPTION');
    }    

    static testMethod void testIdDontExist(){
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.httpMethod = 'PUT';
        req.requestURI = 'https://test.salesforce.com/services/apexrest/merge/masterNoexist';
        RestContext.request = req;
        RestContext.response = res;
        
        try{
        	PorchMergeResource.doPut('0201010');
        }catch(StringException e){
            return;
        }
        System.assert(false, 'Expected System.StringException');
    }
}