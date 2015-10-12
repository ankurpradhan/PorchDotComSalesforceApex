/*
  Author : Shirish Goel
  Date : 3/16/2015
  Objective : 
*/
public class UpdateObjectsTriggerHandler {
  
  public void checkFieldsTracked (String objName, Map<Id,SObject> oldmap , Map<Id,SObject> newMap) {
  
     Porch_Event_Field_Mapping__c fieldMapping = new Porch_Event_Field_Mapping__c();
     fieldMapping = Porch_Event_Field_Mapping__c.getInstance(objName);
     String fieldsToCheck = fieldMapping.Fields_Tracked__c ; 
     String event = fieldMapping.Event__c;
     //Splitting the fieldsToCheck String, to check for multiple comma separated values.
     list<String> checkFields = new List<String>();
     checkFields = fieldsToCheck.split(',');
     
     List<Porch_Event__c> toBeInserted = new List<Porch_Event__c>();
     
     
     for (Id i : newMap.keyset()) {
         for (String str : checkFields) {
             if (newMap.get(i).get(str) != oldMap.get(i).get(str)) {
             
                 Porch_Event__c newRecord = new Porch_Event__c();
                 newRecord.Source_Id__c = i ;
                 newRecord.Source_Type__c = objName ;
                 newrecord.Status__c = 'Submitted' ;
                 newRecord.Event__c = event;//'Tracked Field Updated' ;
             
                 toBeInserted.add(newRecord);
     
                 }
             }
         }       
  
     
       try {
          if(toBeInserted.size() != 0){
             insert toBeInserted;                                    //Inserting records in Porch Events object
             }
          }
           catch (DmlException e) {
               System.debug('The following exception has occurred: ' + e.getMessage());
               }         
     
     }

}