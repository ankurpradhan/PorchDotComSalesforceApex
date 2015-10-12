public class TaskClass {
    public TaskClass() {
        
    }
    /*
    Public void Taskcount(List <Task> Triggernew, Map <Id,Task> TriggernewMap )
    {
        Set <Id> Leadids = new Set <Id> ();
        Set <Id> Accountids = new Set <Id> ();
        For (Task t: Triggernew)
        {       
            If(t.whoId!=null)
            {
                Schema.SObjectType TypesObject = t.whoId.getSObjectType();
                If(Lead.sObjectType == TypesObject)
                {
                    Leadids.add(t.whoId);
                }
            }
            If(t.whatId!=null)
            {
                Schema.SObjectType TypesObject = t.whatId.getSObjectType();
                If(Account.sObjectType == TypesObject)
                {
                    Accountids.add(t.whatId);
                }
            }


        }
        List <Lead> currentLeads = new List <Lead>();
        List <Lead>  updatedLead = new List <Lead>();
        List <Account> currentAccounts = new List <Account>();
        List <Account>  updatedAccounts = new List <Account>();            
        If(Leadids.size()>0){
            currentLeads = [SELECT Id,OwnerId,Activity_Count__c,Total_Activity_Count__c FROM Lead WHERE Id in : Leadids];
        }
        If(Accountids.size()>0){
            currentAccounts = [SELECT Id,OwnerId,Activity_Count__c,Total_Activity_Count__c FROM Account WHERE Id in : Accountids];
        }

        Map <Id, Integer> SobjectidTaskCountMap = new Map <Id,Integer> ();
        Map <ID,Map<Id,Set<Task>>> SobjectOwnerTaskSetMap = new Map <ID,Map<Id,Set<Task>>> ();
        Map <Id, Set<Task>> OwnertaskMap = new Map<Id, Set<Task>> ();
        Set <Task> TaskSet;
        Integer i;

        List <Task> TaskList2Iterate = new List <Task> ();
        TaskList2Iterate = [SELECT Id, ownerId, whoId, whatId, call_Record_Count__c FROM Task WHERE whoId in :Leadids OR whatId in: Accountids];
        
        For (Task t: TaskList2Iterate)
        {
            If(t.whoId!=null && Lead.sObjectType == t.whoId.getSObjectType()){
                TaskSet = new Set <Task> ();
                If(OwnertaskMap.containskey(t.OwnerId))
                {
                    TaskSet = OwnertaskMap.get(t.OwnerId);
                    TaskSet.add(t);
                }else{
                    TaskSet.add(t);
                }
                OwnertaskMap.put(t.OwnerId,TaskSet);
                SobjectOwnerTaskSetMap.put(t.whoId,OwnertaskMap);
                If(SobjectidTaskCountMap.containskey(t.whoId))
                {
                    SobjectidTaskCountMap.put(t.whoId,SobjectidTaskCountMap.get(t.whoId)+1);    
                }else{
                    SobjectidTaskCountMap.put(t.whoId,1);   
                }
            }
            If(t.WhatId!=null && Account.sObjectType == t.whatId.getSObjectType()){
                TaskSet = new Set <Task> ();
                If(OwnertaskMap.containskey(t.OwnerId))
                {
                    TaskSet = OwnertaskMap.get(t.OwnerId);
                    TaskSet.add(t);
                }else{
                    TaskSet.add(t);
                }
                OwnertaskMap.put(t.OwnerId,TaskSet);
                SobjectOwnerTaskSetMap.put(t.whatId,OwnertaskMap);
                If(SobjectidTaskCountMap.containskey(t.whatId))
                {
                    SobjectidTaskCountMap.put(t.whatId,SobjectidTaskCountMap.get(t.whatId)+1);  
                }else{
                    SobjectidTaskCountMap.put(t.whatId,1);  
                }
            }
            
            
        }
        
        For (Lead l: currentLeads)
        {
            i = 0;
            OwnertaskMap = new Map<Id, Set<Task>> ();
            If(SobjectOwnerTaskSetMap.containskey(l.Id))
            {
                OwnertaskMap = SobjectOwnerTaskSetMap.get(l.Id);
                if(OwnertaskMap.containskey(l.OwnerId))
                {
                    l.Activity_Count__c = OwnertaskMap.get(l.OwnerId).size();
                    ++i;
                }

            }
            If(SobjectidTaskCountMap.containskey(l.Id))
            {
                l.Total_Activity_Count__c = SobjectidTaskCountMap.get(l.Id);
                ++i;
            }
            If(i>0)
            {
                updatedLead.add(l);
            }

        }

        For (Account a: currentAccounts)
        {
            i = 0;
            OwnertaskMap = new Map<Id, Set<Task>> ();
            If(SobjectOwnerTaskSetMap.containskey(a.Id))
            {
                OwnertaskMap = SobjectOwnerTaskSetMap.get(a.Id);
                if(OwnertaskMap.containskey(a.OwnerId))
                {
                    a.Activity_Count__c = OwnertaskMap.get(a.OwnerId).size();
                    ++i;
                }

            }
            If(SobjectidTaskCountMap.containskey(a.Id))
            {
                a.Total_Activity_Count__c = SobjectidTaskCountMap.get(a.Id);
                ++i;
            }
            If(i>0)
            {
                updatedAccounts.add(a);
            }

        }

        If(updatedLead.size()>0)
        {   
            update updatedLead;
        }

        If(updatedAccounts.size()>0)
        {   
            update updatedAccounts;
        }
    }
    */
}