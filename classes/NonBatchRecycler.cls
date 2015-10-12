global class NonBatchRecycler implements Schedulable{
    global void execute(SchedulableContext SC) {
        List<Lead> updateLeads = new List<Lead>();
        for (Lead leadEntry : [SELECT Id, OwnerId, Company, Porch_com_Company_Key_ID__c, Status FROM Lead 
                               WHERE Porch_com_Company_Key_ID__c != null AND Status = 'Open' AND OwnerType__c = 'Individual Owner' and LastTransferDate <= LAST_N_DAYS:2  
                               and (LastActivityDate <= LAST_N_DAYS:2  or LastActivityDate = NULL) LIMIT 1000])
        {
            Lead owner = new Lead();
            owner.Id = leadEntry.Id;
            owner.ownerId = '00Gj0000001HMkIEAW';
            updateLeads.add(owner);
        }
        if (!updateLeads.isEmpty()) {
            system.debug('Number of items in the payload list ' + updateLeads.size());
            system.debug('We found leads and are updating them ');
            upsert updateLeads;
        }
    }
}