global class attemptedRecycleSchedule implements Schedulable {
    global void execute(SchedulableContext SC) {
        attemptedRecycle a = new attemptedRecycle();
        database.executebatch(a);
    }
}