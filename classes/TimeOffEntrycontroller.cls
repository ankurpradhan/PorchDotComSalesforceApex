public with sharing class TimeOffEntrycontroller {

    
    public List <Time_Off__c> TimeOffEntryList{get;set;}
    public Boolean showUpdate{get;set;}
    public string Message{get;set;}
    public TimeOffEntrycontroller(ApexPages.StandardController stdController) {
        TimeOffEntryList = new List <Time_Off__c> ();
        showUpdate = false;
        AddEntry();
    }
    
     
    public void AddFiveEntry ()
    {
        Integer i;
        For(i=0;i<=5;i++)
        {
            AddEntry();
        }
    }

    Public void AddEntry()
    {
        Time_Off__c t= new Time_Off__c ();
        TimeOffEntryList.add(t);
    }

    public void SaveEntry ()
    {
        try{
            Integer j =0,k=0;

            while (j < TimeOffEntryList.size())
            {
              if(TimeOffEntryList.get(j).employee__c == null && TimeOffEntryList.get(j).Date_Off__c == null)
              {
                TimeOffEntryList.remove(j);
              }else
              {
                j++;
                
              }
            }
            
            if(TimeOffEntryList.size()>0)
            {
                insert TimeOffEntryList;
                Message = 'Time entries created';
                
            }else{
                Message = 'No time entries to be created. Please add a few time entries.';

            }
            TimeOffEntryList = new List <Time_Off__c> ();
            AddEntry ();
        }catch(exception ex){
            Message = 'We are sorry there was an issue creating time entries:- ' + ex;
        }
        showUpdate = true;

    }
}