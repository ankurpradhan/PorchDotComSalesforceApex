trigger ContactTrigger on Contact (after update) {
    Map <Id,Contact> FilteredTriggerNewMap = new Map <Id,Contact> ();
	Map <Id,Contact> FilteredTriggerOldMap = new Map <Id,Contact> ();

	Schema.DescribeSObjectResult d = Schema.SObjectType.Contact; 
	Map<String,Schema.RecordTypeInfo> rtMapByName = d.getRecordTypeInfosByName();


	Schema.RecordTypeInfo HMrt =  rtMapByName.get('Home Management');
	For (Contact Cont: trigger.new)
	{
		If(UserInfo.getUserId() != '005j000000C1G5q' && Cont.recordtypeid != HMrt.getRecordTypeId()){
			FilteredTriggerNewMap.put(Cont.Id,trigger.newMap.get(Cont.Id)); 
			FilteredTriggerOldMap.put(Cont.Id,trigger.oldMap.get(Cont.Id));
		}
	}
	if(FilteredTriggerOldMap.size()>0){
		UpdateObjectsTriggerHandler handler = new UpdateObjectsTriggerHandler();
		handler.checkFieldsTracked ('Contact', FilteredTriggerOldMap, FilteredTriggerNewMap);
	}


}