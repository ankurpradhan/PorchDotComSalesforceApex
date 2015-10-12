trigger TaskTrigger on Task (after insert, after update) {

  // Task class object
    TaskClass TaskClassobject = new TaskClass ();
    /*
    if (Trigger.isInsert) { 
        TaskClassobject.Taskcount(trigger.new,trigger.newMap);                  // Count activity 
    }
    */   
}