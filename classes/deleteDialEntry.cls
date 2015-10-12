global class deleteDialEntry implements Database.Batchable<sObject>
{
    String email = 'matth@porch.com';
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id FROM NVMConnect__Dial_Entry__c';
        if(test.isRunningTest()){
            query += ' LIMIT 1';
        }
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<NVMConnect__Dial_Entry__c> scope)
    {
        List<NVMConnect__Dial_Entry__c> deletedEntries = new List<NVMConnect__Dial_Entry__c>();
        for(NVMConnect__Dial_Entry__c d : scope)
        {
            deletedEntries.add(d);
        }
        delete deletedEntries;
    }   
    global void finish(Database.BatchableContext BC)
    {
        //Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        //mail.setToAddresses(new String[] {email});
        //mail.setReplyTo('matth@porch.com.com');
        //mail.setSenderDisplayName('Batch Processing');
        //mail.setSubject('Follow Up Batch Process Completed');
        //mail.setPlainTextBody('Batch Process has completed');
        //Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}