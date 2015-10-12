global class openRecycle implements Database.Batchable<sObject>
{
    String email = 'matth@porch.com';
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String ownerType = 'Individual Owner';
        String open = 'Open';
        Date d = System.today() - 2;
        String query = 'SELECT Id, OwnerId, Company, Porch_com_Company_Key_ID__c, Status FROM Lead WHERE Porch_com_Company_Key_ID__c != null AND Status = :open AND OwnerType__c = :ownerType and Do_Not_Recycle__c = FALSE and LastTransferDate <= :d and (LastActivityDate <= :d or LastActivityDate = NULL)';
        if(test.isRunningTest()){
            query += ' LIMIT 1';
        }
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<Lead> scope)
    {
        List<Lead> updateLeads = new List<Lead>();
        Date t = System.today();
        for(Lead l : scope)
        {
            Lead ld = new Lead();
            system.debug('Owner Id is ' + l.OwnerId);
            ld.Id = l.Id;
            ld.OwnerId = '00Gj0000001HMkIEAW'; //Rev queue
            ld.Company = l.Company;
            ld.Porch_com_Company_Key_ID__c = l.Porch_com_Company_Key_ID__c;
            ld.Status = 'Open';
            ld.Recycle_Date__c = t;
            system.debug('Payload is ' + ld);
            updateLeads.add(ld);
        }
        upsert updateLeads;
    }   
    global void finish(Database.BatchableContext BC)
    {
        //Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        //mail.setToAddresses(new String[] {email});
        //mail.setReplyTo('matth@porch.com.com');
        //mail.setSenderDisplayName('Batch Processing');
        //mail.setSubject('Batch Process Completed');
        //mail.setPlainTextBody('Batch Process has completed');
        //Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}