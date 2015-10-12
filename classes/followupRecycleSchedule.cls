global class followupRecycleSchedule implements Schedulable{
     global void execute(SchedulableContext sc) {
        followupRecycle a = new followupRecycle(); 
        database.executebatch(a);
     }
  }