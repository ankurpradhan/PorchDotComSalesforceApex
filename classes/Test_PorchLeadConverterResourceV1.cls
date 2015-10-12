@isTest (SeeAllData=true)
private class Test_PorchLeadConverterResourceV1 {

    static void init(){
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.httpMethod = 'POST';
        RestContext.request = req;
        RestContext.response = res;
    }

    static testMethod void testHappyPath(){
        init();
//      Create a lead
        String porchCompanyId = 'testHappyPath';
        String porchUserId = 'testPorchUserId';
        String firstName = 'testFirstName';
        String lastName = 'testLastName';
        String email = 'test@porch.com';
        String mobilePhone = '123-222-3333';
        String accountSource = 'NARI';
        
        Lead testLead = new Lead(Porch_com_Company_Key_ID__c=porchCompanyId, LastName='Kim', Company='Test Company', Status='Open',
                                 Phone='206-111-2222', State='WA', PostalCode='98107',
                                 Pro_Type__c='Carpenter', County__c='Jones', Pro_Status__c='Enrolled');
        insert testLead;

        Map<String, String> result = PorchLeadConverterResourceV1.doPost(porchCompanyId, porchUserId,
                                                                       firstName, lastName, email, mobilePhone, System.now(), accountSource);

        System.assert(result != null, 'response is null');
        System.assert(result.get('accountId') != null, 'accountId is null');
        System.assert(result.get('contactId') != null, 'contactId is null');
        System.assertEquals(result.get('success'), 'true');

        Contact contact = [SELECT FirstName, LastName, MobilePhone, Email
                           , Porch_com_Company_Key_ID__c, Porch_com_User_Key_ID__c
                           FROM Contact WHERE Id = :result.get('contactId')];

        System.assertEquals(porchCompanyId, contact.Porch_com_Company_Key_ID__c);
        System.assertEquals(porchUserId, contact.Porch_com_User_Key_ID__c);
        System.assertEquals(firstName, contact.FirstName);
        System.assertEquals(lastName, contact.LastName);
        System.assertEquals(mobilePhone, contact.MobilePhone);
        System.assertEquals(email, contact.Email);

        Account account = [SELECT Porch_com_Company_Key_ID__c, Claimed_Date__c, AccountSource FROM Account WHERE Id = :result.get('accountId')];
        System.assert(account.Claimed_Date__c != null, 'claim date is null');
        System.assertEquals(porchCompanyId, account.Porch_com_Company_Key_ID__c);
        System.assertEquals(accountSource, account.AccountSource);
    }

    static testMethod void testAccountAlreadyExists(){
        init();
        String porchCompanyId = 'testAccountAlreadyExists';
        String porchUserId = 'testPorchUserId';
        String firstName = 'testFirstName';
        String lastName = 'testLastName';
        String email = 'test@porch.com';
        String mobilePhone = '123-222-3333';
        String accountSource = 'NARI';

        Account testAccount = new Account(Porch_com_Company_Key_ID__c=porchCompanyId, Name='Test Company');
        insert testAccount;



        Map<String, String> result = PorchLeadConverterResourceV1.doPost(porchCompanyId, porchUserId,
                                                                       firstName, lastName, email, mobilePhone, System.now(), accountSource);

        System.assert(result != null, 'response is null');
        System.assert(result.get('message') != null, 'message is null');
        System.assertEquals(result.get('errorCode'), 'SFDC_PORCH_ACCOUNT_ALREADY_EXISTS');
        System.assertEquals(result.get('success'), 'false');
    }

    static testMethod void testDoubleConversion(){
        init();
//      Create a lead
        String porchCompanyId = 'testDoubleConvert';
        String porchUserId = 'testDoubleUserId';
        String firstName = 'testFirstName';
        String lastName = 'testLastName';
        String email = 'test@porch.com';
        String mobilePhone = '123-222-3333';
        String accountSource = 'NARI';
        
        Lead testLead = new Lead(Porch_com_Company_Key_ID__c=porchCompanyId, LastName='Kim', Company='Test Company', Status='Open',
                                 Phone='206-111-2222', State='WA', PostalCode='98107',
                                 Pro_Type__c='Carpenter', County__c='Jones', Pro_Status__c='Enrolled');
        insert testLead;

        Map<String, String> result = PorchLeadConverterResourceV1.doPost(porchCompanyId, porchUserId,
                                                                       firstName, lastName, email, mobilePhone, System.now(), accountSource);

        System.assert(result != null, 'response is null');
        System.assert(result.get('accountId') != null, 'accountId is null');
        System.assert(result.get('contactId') != null, 'contactId is null');
        System.assertEquals(result.get('success'), 'true');

        //Try and convert again
        result = PorchLeadConverterResourceV1.doPost(porchCompanyId, porchUserId,
                                                                       firstName, lastName, email, mobilePhone, System.now(), accountSource);

        System.assert(result != null, 'response is null');
        System.assert(result.get('message') != null, 'message is null');
        System.assertEquals(result.get('errorCode'), 'SFDC_PORCH_ACCOUNT_ALREADY_EXISTS');
        System.assertEquals(result.get('success'), 'false');
    }

    static testMethod void testLeadNotFound(){
        init();
        String porchCompanyId = 'testLeadNotFound';
        String porchUserId = 'testPorchUserId';
        String firstName = 'testFirstName';
        String lastName = 'testLastName';
        String email = 'test@porch.com';
        String mobilePhone = '123-222-3333';
        String accountSource = 'NARI';

        Map<String, String> result = PorchLeadConverterResourceV1.doPost(porchCompanyId, porchUserId,
                                                                       firstName, lastName, email, mobilePhone, System.now(), accountSource);

        System.assert(result != null, 'response is null');
        System.assert(result.get('message') != null, 'message is null');
        System.assertEquals(result.get('errorCode'), 'SFDC_PORCH_LEAD_NOT_FOUND');
        System.assertEquals(result.get('success'), 'false');
    }

    static testMethod void testNullData(){
        init();
//      Create a lead
        String porchCompanyId = 'testNullData';
        String porchUserId = 'testPorchUserId';
        String accountSource = 'NARI';

        Lead testLead = new Lead(Porch_com_Company_Key_ID__c=porchCompanyId, LastName='Kim', Company='Test Company', Status='Open',
                                 Phone='206-111-2222', State='WA', PostalCode='98107',
                                 Pro_Type__c='Carpenter', County__c='Jones', Pro_Status__c='Enrolled');
        insert testLead;

        Map<String, String> result = PorchLeadConverterResourceV1.doPost(porchCompanyId, porchUserId,
                                                                       null, null, null, null, System.now(), accountSource);

        System.assert(result != null, 'response is null');
        System.assert(result.get('accountId') != null, 'accountId is null');
        System.assert(result.get('contactId') != null, 'contactId is null');
        System.assertEquals(result.get('success'), 'true');

        Contact contact = [SELECT FirstName, LastName, MobilePhone, Email
                           , Porch_com_Company_Key_ID__c, Porch_com_User_Key_ID__c
                           FROM Contact WHERE Id = :result.get('contactId')];

        System.assertEquals(porchCompanyId, contact.Porch_com_Company_Key_ID__c);
        System.assertEquals(porchUserId, contact.Porch_com_User_Key_ID__c);
        System.assertEquals('Kim', contact.LastName);

        Account account = [SELECT Porch_com_Company_Key_ID__c, Claimed_Date__c, AccountSource FROM Account WHERE Id = :result.get('accountId')];
        System.assert(account.Claimed_Date__c != null, 'claim date is null');
        System.assertEquals(porchCompanyId, account.Porch_com_Company_Key_ID__c);
        System.assertEquals(accountSource, account.AccountSource);
    }

    static testMethod void testBlankData(){
        init();
//      Create a lead
        String porchCompanyId = 'testBlankData';
        String porchUserId = 'testPorchUserId';
        String accountSource = 'NARI';
        
        Lead testLead = new Lead(Porch_com_Company_Key_ID__c=porchCompanyId, LastName='Kim', Company='Test Company', Status='Open',
                                 Phone='206-111-2222', State='WA', PostalCode='98107',
                                 Pro_Type__c='Carpenter', County__c='Jones', Pro_Status__c='Enrolled');
        insert testLead;

        Map<String, String> result = PorchLeadConverterResourceV1.doPost(porchCompanyId, porchUserId,
                                                                       '', '', '', '', System.now(), accountSource);

        System.assert(result != null, 'response is null');
        System.assert(result.get('accountId') != null, 'accountId is null');
        System.assert(result.get('contactId') != null, 'contactId is null');
        System.assertEquals(result.get('success'), 'true');

        Contact contact = [SELECT FirstName, LastName, MobilePhone, Email
                           , Porch_com_Company_Key_ID__c, Porch_com_User_Key_ID__c
                           FROM Contact WHERE Id = :result.get('contactId')];

        System.assertEquals(porchCompanyId, contact.Porch_com_Company_Key_ID__c);
        System.assertEquals(porchUserId, contact.Porch_com_User_Key_ID__c);
        System.assertEquals('Kim', contact.LastName);

        Account account = [SELECT Porch_com_Company_Key_ID__c, Claimed_Date__c, AccountSource FROM Account WHERE Id = :result.get('accountId')];
        System.assert(account.Claimed_Date__c != null, 'claim date is null');
        System.assertEquals(porchCompanyId, account.Porch_com_Company_Key_ID__c);
        System.assertEquals(accountSource, account.AccountSource);
    }

    static testMethod void testQueueHandling(){
        init();

        String porchCompanyId = 'testQueueHandling';
        String porchUserId = 'testPorchUserId';
        String firstName = 'testFirstName';
        String lastName = 'testLastName';
        String email = 'test@porch.com';
        String mobilePhone = '123-222-3333';
        String accountSource = 'NARI';
        
        Group queue = [SELECT Id FROM Group WHERE Type = 'Queue' LIMIT 1];

        Lead testLead = new Lead(Porch_com_Company_Key_ID__c=porchCompanyId, LastName='Kim', Company='Test Company', Status='Open',
                                 Phone='206-111-2222', State='WA', PostalCode='98107',
                                 Pro_Type__c='Carpenter', County__c='Jones', Pro_Status__c='Enrolled', OwnerId=queue.Id);
        insert testLead;

        Map<String, String> result = PorchLeadConverterResourceV1.doPost(porchCompanyId, porchUserId,
                                                                       firstName, lastName, email, mobilePhone, System.now(), accountSource);

        System.assert(result != null, 'response is null');
        System.assert(result.get('accountId') != null, 'accountId is null');
        System.assert(result.get('contactId') != null, 'contactId is null');
        System.assertEquals(result.get('success'), 'true');

        Contact contact = [SELECT FirstName, LastName, MobilePhone, Email
                           , Porch_com_Company_Key_ID__c, Porch_com_User_Key_ID__c, OwnerId
                           FROM Contact WHERE Id = :result.get('contactId')];

        System.assertEquals(porchCompanyId, contact.Porch_com_Company_Key_ID__c);
        System.assertEquals(porchUserId, contact.Porch_com_User_Key_ID__c);
        System.assertEquals(firstName, contact.FirstName);
        System.assertEquals(lastName, contact.LastName);
        System.assertEquals(mobilePhone, contact.MobilePhone);
        System.assertEquals(email, contact.Email);
        System.assertEquals(UserInfo.getUserId(), contact.OwnerId);

        Account account = [SELECT Porch_com_Company_Key_ID__c, Claimed_Date__c, OwnerId, AccountSource FROM Account WHERE Id = :result.get('accountId')];
        System.assert(account.Claimed_Date__c != null, 'claim date is null');
        System.assertEquals(porchCompanyId, account.Porch_com_Company_Key_ID__c);
        System.assertEquals(UserInfo.getUserId(), account.OwnerId);
        System.assertEquals(accountSource, account.AccountSource);
    }
    
    static testMethod void testNullAccountSource(){
        init();
//      Create a lead
        String porchCompanyId = 'testHappyPath';
        String porchUserId = 'testPorchUserId';
        String firstName = 'testFirstName';
        String lastName = 'testLastName';
        String email = 'test@porch.com';
        String mobilePhone = '123-222-3333';
        String accountSource = null;
        
        Lead testLead = new Lead(Porch_com_Company_Key_ID__c=porchCompanyId, LastName='Kim', Company='Test Company', Status='Open',
                                 Phone='206-111-2222', State='WA', PostalCode='98107',
                                 Pro_Type__c='Carpenter', County__c='Jones', Pro_Status__c='Enrolled');
        insert testLead;

        Map<String, String> result = PorchLeadConverterResourceV1.doPost(porchCompanyId, porchUserId,
                                                                       firstName, lastName, email, mobilePhone, System.now(), accountSource);

        System.assert(result != null, 'response is null');
        System.assert(result.get('accountId') != null, 'accountId is null');
        System.assert(result.get('contactId') != null, 'contactId is null');
        System.assertEquals(result.get('success'), 'true');

        Contact contact = [SELECT FirstName, LastName, MobilePhone, Email
                           , Porch_com_Company_Key_ID__c, Porch_com_User_Key_ID__c
                           FROM Contact WHERE Id = :result.get('contactId')];

        System.assertEquals(porchCompanyId, contact.Porch_com_Company_Key_ID__c);
        System.assertEquals(porchUserId, contact.Porch_com_User_Key_ID__c);
        System.assertEquals(firstName, contact.FirstName);
        System.assertEquals(lastName, contact.LastName);
        System.assertEquals(mobilePhone, contact.MobilePhone);
        System.assertEquals(email, contact.Email);

        Account account = [SELECT Porch_com_Company_Key_ID__c, Claimed_Date__c, AccountSource FROM Account WHERE Id = :result.get('accountId')];
        System.assert(account.Claimed_Date__c != null, 'claim date is null');
        System.assertEquals(porchCompanyId, account.Porch_com_Company_Key_ID__c);
        System.assertEquals(null, account.AccountSource);
    }
}