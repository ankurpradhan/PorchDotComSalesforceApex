global class BatchApexScheduler implements Schedulable{
     global void execute(SchedulableContext sc) {
        recycleLeadSchedule b = new recycleLeadSchedule(); 
        database.executebatch(b);
     }
  }