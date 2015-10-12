global class deleteDialEntrySchedule implements Schedulable{
     global void execute(SchedulableContext sc) {
        deleteDialEntry d = new deleteDialEntry(); 
        database.executebatch(d);
     }
  }