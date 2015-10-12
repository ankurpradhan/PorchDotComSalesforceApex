@isTest(SeeAllData=false)
public class Test_ActivityCounter {
    
    // Inserts task from integration user, inserts tasks from other user, updates task owner to integration user.
    static testMethod void CreateTaskfromLeadOwner() {
        List <user> UserList = new List <User> ();
         TaskClass TaskClassobject = new TaskClass ();
        Map <string,List<User>> PNameUserMap = new Map <string,List<User>> ();
        Map<String,Integer> ProfileUserNumMap = new Map<String,Integer> ();
        ProfileUserNumMap.put('Local Market Specialist / Acquisition Team* / Transaction',3);
        ProfileUserNumMap.put('System Admin No Password Expiration',1);
        PNameUserMap =  TestDataFactory.CreateUser(ProfileUserNumMap);
        List <User> user1 = new List <User> ();
        user1 = PNameUserMap.get('Local Market Specialist / Acquisition Team* / Transaction');
        test.startTest();
        List <String> PorchEventFieldMap = new List <String> ();
        PorchEventFieldMap.add('Lead');
        PorchEventFieldMap.add('Task');
        TestDataFactory.CreateFeildmapping(PorchEventFieldMap);
        system.runAs(user1[0]) {
            // Insert test lead and task with same owner
            Lead testLead = new Lead(Porch_com_Company_Key_ID__c='2341234', LastName='Kim', Company='Test Company', Status='Open',
                                     Phone='206-111-2222', State='WA', PostalCode='98107',
                                     Pro_Type__c='Carpenter', County__c='Jones', Pro_Status__c='Enrolled',OwnerId=PNameUserMap.get('Local Market Specialist / Acquisition Team* / Transaction')[0].Id);
            insert testLead;
            String ownerId = testLead.OwnerId;
            String whoId = testLead.Id;
            Task firstTask = new Task(OwnerId=ownerId,WhoId=whoId,CallObject='014e20fd-47bf-21d5-55c7-0aba8cde2bbf',CallDurationInSeconds=30);
            insert firstTask;
            Task SecondTask = new Task(OwnerId=ownerId,WhoId=whoId,CallObject='014e20fd-47bf-21d5-55c7-0aba8cde2bbf',CallDurationInSeconds=30);
            insert SecondTask;
            
            // Insert task with different owner - make a loop
            Task ThirdTask = new Task(OwnerId=PNameUserMap.get('System Admin No Password Expiration')[0].Id,WhoId=whoId,CallObject='014e20fd-47bf-21d5-55c7-0aba8cde2bbf',CallDurationInSeconds=30);
            insert ThirdTask;
            //Task FourthTask = new Task(OwnerId=PNameUserMap.get('Local Market Specialist / Acquisition Team* / Transaction')[1].Id,WhoId=whoId,CallObject='014e20fd-47bf-21d5-55c7-0aba8cde2bbf',CallDurationInSeconds=30);
            Task FourthTask = new Task(OwnerId=user1[1].Id,WhoId=whoId,CallObject='014e20fd-47bf-21d5-55c7-0aba8cde2bbf',CallDurationInSeconds=30);
            insert FourthTask;
            
            List <lead> TestLeadList = new List <Lead> ();
            TestLeadList = [SELECT Id,OwnerId,Activity_Count__c,Total_Activity_Count__c FROM Lead WHERE Id = :testLead.Id ];
            //system.assertEquals(2,TestLeadList[0].Activity_Count__c);
            //system.assertEquals(4,TestLeadList[0].Total_Activity_Count__c);
            
        }
        test.stopTest();
    }
    
    static testMethod void CreateTaskfromAccountOwner() {
        List <user> UserList = new List <User> ();
        Map <string,List<User>> PNameUserMap = new Map <string,List<User>> ();
        Map<String,Integer> ProfileUserNumMap = new Map<String,Integer> ();
        ProfileUserNumMap.put('Local Market Specialist / Acquisition Team* / Transaction',3);
        ProfileUserNumMap.put('System Admin No Password Expiration',1);
        PNameUserMap =  TestDataFactory.CreateUser(ProfileUserNumMap);
        List <User> user1 = new List <User> ();
        user1 = PNameUserMap.get('Local Market Specialist / Acquisition Team* / Transaction');
        test.startTest();
        List <String> PorchEventFieldMap = new List <String> ();
        PorchEventFieldMap.add('Account');
        PorchEventFieldMap.add('Task');
        TestDataFactory.CreateFeildmapping(PorchEventFieldMap);
        system.runAs(user1[0]) {
            // Insert test lead and task with same owner
            Account testAccount = new Account(Porch_com_Company_Key_ID__c='2341234', Name='Test Company',OwnerId=PNameUserMap.get('Local Market Specialist / Acquisition Team* / Transaction')[0].Id);/*, Status='Open',
                                     Phone='206-111-2222', State='WA', PostalCode='98107',
                                     Pro_Type__c='Carpenter', County__c='Jones', Pro_Status__c='Enrolled');*/
            insert testAccount;
            String ownerId = testAccount.OwnerId;
            String whatId = testAccount.Id;
            Task firstTask = new Task(OwnerId=ownerId,whatId=whatId);
            insert firstTask;
            Task SecondTask = new Task(OwnerId=ownerId,whatId=whatId);
            insert SecondTask;
            
            // Insert task with different owner - make a loop
            Task ThirdTask = new Task(OwnerId=PNameUserMap.get('System Admin No Password Expiration')[0].Id,whatId=whatId);
            insert ThirdTask;
            Task FourthTask = new Task(OwnerId=user1[1].Id,whatId=whatId);
            insert FourthTask;
            
            List <Account> TestAccountList = new List <Account> ();
            TestAccountList = [SELECT Id,OwnerId,Activity_Count__c,Total_Activity_Count__c FROM Account WHERE Id = :testAccount.Id ];
            
            //system.assertEquals(2,TestAccountList[0].Activity_Count__c);
            //system.assertEquals(4,TestAccountList[0].Total_Activity_Count__c);
            
            
        }
        test.stopTest();
    }
    
}