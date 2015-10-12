trigger AccountTrigger on Account (after update) {
    
    Map <Id,Account> FilteredTriggerNewMap = new Map <Id,Account> ();
    Map <Id,Account> FilteredTriggerOldMap = new Map <Id,Account> ();
    
    Schema.DescribeSObjectResult d = Schema.SObjectType.Account; 
    Map<String,Schema.RecordTypeInfo> rtMapByName = d.getRecordTypeInfosByName();
    

    Schema.RecordTypeInfo HMrt =  rtMapByName.get('Home Management');
    For (Account Acc: trigger.new){
      If(UserInfo.getUserId() != '005j000000C1G5q' && Acc.recordtypeid != HMrt.getRecordTypeId()){//
        
        FilteredTriggerNewMap.put(Acc.Id,trigger.newMap.get(Acc.Id)); 
        FilteredTriggerOldMap.put(Acc.Id,trigger.oldMap.get(Acc.Id));
      }
    }
    if(FilteredTriggerOldMap.size()>0){//checking if the update is made by Integration User, then bypass the trigger
      UpdateObjectsTriggerHandler handler = new UpdateObjectsTriggerHandler();
      handler.checkFieldsTracked ('Account', FilteredTriggerOldMap, FilteredTriggerNewMap);
    }
}