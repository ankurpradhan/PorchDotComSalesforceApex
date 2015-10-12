trigger LeadOwnerChangeTrigger on Lead (after update) {
    if (trigger.new[0].OwnerId!=trigger.old[0].OwnerId) {
        List<Lead> updatedLead = new List<Lead>();
        List<Lead> currentLead = new List<Lead>();
        currentLead = [SELECT Id,OwnerId,Activity_Count__c FROM Lead WHERE Id IN: Trigger.newMap.keySet()];
        List<AggregateResult> TaskOwnerAggregate = new List<AggregateResult>();
        try {
            TaskOwnerAggregate = [SELECT Count(Id) dracula, OwnerId FROM Task 
                                  WHERE OwnerId = :trigger.new[0].OwnerId
                                  AND WhoId = :Trigger.new[0].Id AND Call_Record_Count__c = 1 group by OwnerId];
        } 
        catch (System.QueryException e) {
            System.debug('The following exception has occurred: ' + e.getMessage());
        }
        if (TaskOwnerAggregate.size()>0) {
            for (Lead l : currentLead) {
                for(Integer i=0;i<TaskOwnerAggregate.size();i++) {
                    l.Activity_Count__c =(Integer)TaskOwnerAggregate[i].get('dracula');
                    updatedLead.add(l); 
                }
            }
        }
        try {
            if (!updatedLead.isEmpty()) { 
                update updatedLead; 
            }
        }
        catch (DmlException e) {
            System.debug('The following exception has occurred: ' + e.getMessage());
        }
    }
}