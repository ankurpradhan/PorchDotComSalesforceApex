/*
  Author : Shirish Goel
  Date : 3/17/2015
  Objective : 
*/

trigger LeadTrigger on Lead (after update) {
	if(UserInfo.getUserId() != '005j000000C1G5q'){//checking if the update is made by Integration User, then bypass the trigger
	   UpdateObjectsTriggerHandler handler = new UpdateObjectsTriggerHandler();
	   handler.checkFieldsTracked ('Lead', trigger.oldMap, trigger.newMap);
	}

}