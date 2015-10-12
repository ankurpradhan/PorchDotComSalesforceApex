@isTest 
private class TestInsertOfPorchEventsRecords{

// Objective is to test the triggers on Account, Contact, Lead , Task and Event which leads to creation of Porcg Events Records

// Create new Account.

 static Account CreateNewAccount ( String name ) {
   Account acc = new Account (
         Name = name
         );
   insert acc;
   return acc;
 }

// Create new Lead
 
 static Lead CreateNewLead ( String lastname, String company, String phone, String state, String country, String zip ) {
   Lead ld = new Lead (
         LastName = lastname,
         Company = company,
         Status = 'Open',
         phone = phone,
         state = state,
         country = country,
         postalcode=zip,
         county__c = 'tt',
         Pro_type__c = 'test',
         Porch_com_Company_Key_ID__c = '1234'
         );
   insert ld;
   return ld;
 }

// Create new Contact
 
  static Contact CreateNewContact ( String lastname, Account acc ) {
   Contact con = new Contact (
         LastName = lastname,
         Account = acc
         );
   insert con;
   return con;
 }

//Create new Task

  static Task CreateNewTask (/* Id assignedTo ,*/ Id whoid ) {
   Task tsk = new Task (
        // Owner = UserInfo.getUserId(),
         Subject = 'Call',
         WhoId = whoId,
         Status = 'In Progress',
         Priority = 'Normal'
         );
   insert tsk;
   return tsk;
 }


// Create new Event
 
 static Event CreateNewEvent ( Id whoId ){
   Event evnt = new Event (
         Subject = 'Call',
         WhoId = whoId,
         StartDateTime = DateTime.now(),
         EndDateTime = DateTime.now().addDays(2)
         );
   insert evnt;
   return evnt;
 }

  static Porch_Event_Field_Mapping__c CreateCustomSetting ( String name, String event , String fieldsTracked , String objName ){
   Porch_Event_Field_Mapping__c cs = new Porch_Event_Field_Mapping__c (
         Name = name,
         Event__c = event,
         Fields_Tracked__c = fieldsTracked,
         Source_Type__c = objName
         );
   insert cs;
   return cs;
 }



  // Test Porch Event records creation on insert/update of Event
  
  static testmethod void InsertUpdateOfEvent(){
    
    Porch_Event_Field_Mapping__c TestCustomSetting = CreateCustomSetting ('Event','Test Event Insert/Update' , 'Location' , 'Event');
    Lead TestLead = CreateNewLead('Lead2','Company', '123', 'state', 'US','92345');
    Event TestEvent = CreateNewEvent(TestLead.Id);
    
    List<Porch_Event__c> PorchEventEventInsert = [Select Event__c, Source_Id__c, Source_Type__c, Status__c From Porch_Event__c Where Source_Id__c = :TestEvent.Id and Event__c = 'New Event Created'];
   
   System.assertEquals(PorchEventEventInsert.size(), 1); //Test for Event Insert
   
   TestEvent.Location = 'US';
   update TestEvent ; 
   
   Porch_Event_Field_Mapping__c FieldMapping = Porch_Event_Field_Mapping__c.getInstance('Event');
   String Event = FieldMapping.Event__c;
   
   List<Porch_Event__c> PorchEventEventUpdate = [Select Event__c, Source_Id__c, Source_Type__c, Status__c From Porch_Event__c 
                                                Where Source_Id__c = :TestEvent.Id and Event__c = :Event];
  
   system.assertEquals(PorchEventEventUpdate.size(), 1);  //Test for Event Update
  
  }

  //Test Porch Event record creation on Lead update
  
  static testmethod void PorchEventLeadUpdate(){
  
  Porch_Event_Field_Mapping__c TestCustomSetting = CreateCustomSetting ('Lead','Test Lead Update' , 'Company,Email' , 'Lead');
  Lead TestLead = CreateNewLead ('TestLead3', 'Company', '123', 'state', 'US','92345') ;
  
  TestLead.Company = 'TestCompany';
  update TestLead ;
  
   Porch_Event_Field_Mapping__c FieldMapping = Porch_Event_Field_Mapping__c.getInstance('Lead');
   String Event = FieldMapping.Event__c;
   
   List<Porch_Event__c> PorchEventLeadUpdate = [Select Event__c, Source_Id__c, Source_Type__c, Status__c From Porch_Event__c 
                                                Where Source_Id__c = :TestLead.Id and Event__c = :Event];
  
   system.assertEquals(PorchEventLeadUpdate.size(), 1);  //Test for Lead Update
  
  }
  
  // Test Porch Event record creation on Account Update
  
  static testmethod void PorchEventAccountUpdate () {
    
    Porch_Event_Field_Mapping__c TestCustomSettingAcc = CreateCustomSetting ('Account','Test Account Update' , 'Name,Type' , 'Account');
    Porch_Event_Field_Mapping__c TestCustomSettingLead = CreateCustomSetting ('Lead','Test Lead Update' , 'Company,Email' , 'Lead');
    Lead TestLead = CreateNewLead ('TestLead3', 'Company', '123', 'state', 'US','92345') ;
  
    Database.LeadConvert lc = new Database.LeadConvert();
    lc.setLeadId(TestLead.id);
    LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
    lc.setConvertedStatus(convertStatus.MasterLabel);
    Database.LeadConvertResult lcr = Database.convertLead(lc);
    System.assert(lcr.isSuccess());
  
    Id accId = lcr.getAccountId();
  
    Account TestAcc = [Select Type From Account Where Id = :accId];

  
    TestAcc.Type = 'Analyst';
    update TestAcc;
  
   Porch_Event_Field_Mapping__c FieldMapping = Porch_Event_Field_Mapping__c.getInstance('Account');
   String Event = FieldMapping.Event__c;
   
   List<Porch_Event__c> PorchEventAccountUpdate = [Select Event__c, Source_Id__c, Source_Type__c, Status__c From Porch_Event__c 
                                                Where Source_Id__c = :TestAcc.Id and Event__c = :Event];
  
   system.assertEquals(PorchEventAccountUpdate.size(), 1);  //Test for Account Update
  
  }
  
  //Test Porch Event record creation for Contact Update
  
  static testmethod void PorchEventContactUpdate () {
    Porch_Event_Field_Mapping__c TestCustomSettingAcc = CreateCustomSetting ('Account','Test Account Update' , 'Name,Type' , 'Account');
    Porch_Event_Field_Mapping__c TestCustomSettingCon = CreateCustomSetting ('Contact' , 'Test Contact Update' , 'Email,FirstName' , 'Contact');
    Porch_Event_Field_Mapping__c TestCustomSettingLead = CreateCustomSetting ('Lead','Test Lead Update' , 'Company,Email' , 'Lead');
    Lead TestLead = CreateNewLead ('TestLead4', 'Company', '123', 'state', 'US','92345') ;
  
    Database.LeadConvert lc = new Database.LeadConvert();
    lc.setLeadId(TestLead.id);
    LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
    lc.setConvertedStatus(convertStatus.MasterLabel);
    Database.LeadConvertResult lcr = Database.convertLead(lc);
    System.assert(lcr.isSuccess());
  
    Id conId = lcr.getContactId();
  
    Contact TestCon = [Select FirstName From Contact Where Id = :conId];
  
   TestCon.FirstName = 'Test';
   update TestCon;
  
   Porch_Event_Field_Mapping__c FieldMapping = Porch_Event_Field_Mapping__c.getInstance('Contact');
   String Event = FieldMapping.Event__c;
   
   List<Porch_Event__c> PorchEventContactUpdate = [Select Event__c, Source_Id__c, Source_Type__c, Status__c From Porch_Event__c 
                                                Where Source_Id__c = :TestCon.Id and Event__c = :Event];
  
   system.assertEquals(PorchEventContactUpdate.size(), 1);  //Test for Contact Update
  
  }
  
  
}