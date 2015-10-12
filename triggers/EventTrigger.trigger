/*
  Author : Shirish Goel
  Date : 3/15/2015
  Objective : To Create new record entries in custom object Porch Event when Events are being Inserted/Updated.
*/

trigger EventTrigger on Event (after insert, after update) {

//List of Porch Events to be Inserted in the case of new Events being Inserted/Updated
  List<Porch_Event__c> porchEventList = new List<Porch_Event__c>();
  if(UserInfo.getUserId() != '005j000000C1G5q'){//checking if the update is made by Integration User, then bypass the trigger
  for (Event evnt : trigger.new) {
  
     if (Trigger.isInsert) {                                //If a new Event is being Inserted
     
         Porch_Event__c newEvent = new Porch_Event__c();   
         newEvent.Source_Type__c = 'Event';                   //Setting Values of Fields 
         newEvent.Source_Id__c = evnt.Id;
         newEvent.Event__c = 'New Event Created';
         newEvent.Status__c = 'Submitted';
     
         porchEventList.add(newEvent);  
      }
        else if (Trigger.isUpdate) {
              
              UpdateObjectsTriggerHandler handler = new UpdateObjectsTriggerHandler();
              handler.checkFieldsTracked ('Event', trigger.oldMap, trigger.newMap);
              
      }
      
   }
   try {
        if(porchEventList.size() != 0){
           insert porchEventList;                                    //Inserting records in Porch Events object
           }
       }
       catch (DmlException e) {
         System.debug('The following exception has occurred: ' + e.getMessage());
     }
  }
}