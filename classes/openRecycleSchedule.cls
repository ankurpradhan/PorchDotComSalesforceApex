global class openRecycleSchedule implements Schedulable{
     global void execute(SchedulableContext sc) {
        openRecycle b = new openRecycle(); 
        database.executebatch(b);
     }
  }