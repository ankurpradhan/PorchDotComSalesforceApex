@isTest 
private class TestLeadAfterUpdate {
   
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
 
   /*static Lead CreateNewLead ( String lastname, String company, String phone, String state, String country, String zip ) {
   Lead ld = new Lead (
         LastName = lastname,
         Company = company,
         Status = 'Open',
         phone = phone,
         state = state,
         country = country,
         postalcode=zip,
         county__c = 'tt',
         Pro_type__c = 'test'
         );
   insert ld;
   return ld;
 }*/
   
   private static testmethod void testLead() {
      
       Porch_Event_Field_Mapping__c TestCustomSetting = CreateCustomSetting ('Lead','Test Lead Update' , 'Company,Email' , 'Lead');
       
      Lead TestLead = new Lead( Company = 'Test Company' , LastName = 'Test Lead' , Status = 'Open',
         Porch_com_Company_Key_ID__c = '1234'); 
      insert TestLead;
      
      TestLead.Company = 'TestCompany';
      update TestLead ;
  
      Porch_Event_Field_Mapping__c FieldMapping = Porch_Event_Field_Mapping__c.getInstance('Lead');
      Porch_Event_Field_Mapping__c TestCustomSettingAcc = CreateCustomSetting ('Account','Test Account Update' , 'Name,Type' , 'Account');
    Porch_Event_Field_Mapping__c TestCustomSettingCon = CreateCustomSetting ('Contact' , 'Test Contact Update' , 'Email,FirstName' , 'Contact');
      String Event = FieldMapping.Event__c;
   
      List<Porch_Event__c> PorchEventLeadUpdate = [Select Event__c, Source_Id__c, Source_Type__c, Status__c From Porch_Event__c 
                                                   Where Source_Id__c = :TestLead.Id and Event__c = :Event];
  
      system.assertEquals(PorchEventLeadUpdate.size(), 1);  //Test for Lead Update
      
      NVMConnect__DialList__c DialList = new NVMConnect__DialList__c ( Name = 'Test Dial List' , NVMConnect__Type__c = 'Lead' , NVMConnect__Primary_Phone_Field__c = 'Phone');
      insert DialList;
      
      NVMConnect__Dial_Entry__c DialEntry = new NVMConnect__Dial_Entry__c (NVMConnect__Dial_List__c = DialList.Id , NVMConnect__Primary_Phone__c = 'Phone' , NVMConnect__Order__c = 1 , NVMConnect__URL__c = 'testurl@test.com' , NVMConnect__Focus_Object_Id__c = TestLead.Id);
      insert dialEntry ;
            
      Database.LeadConvert lc = new Database.LeadConvert();
      lc.setLeadId(TestLead.id);

      LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
      lc.setConvertedStatus(convertStatus.MasterLabel);

      Database.LeadConvertResult lcr = Database.convertLead(lc);
      System.assert(lcr.isSuccess());
      
     }
  }