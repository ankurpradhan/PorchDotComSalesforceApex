@isTest
private class TimeOffEntryController_test
{
	@isTest
	static void itShould()
	{
		Map <string,List<User>> PNameUserMap = new Map <string,List<User>> ();
        Map<String,Integer> ProfileUserNumMap = new Map<String,Integer> ();
        ProfileUserNumMap.put('Local Market Specialist / Acquisition Team* / Transaction',3);
        ProfileUserNumMap.put('System Admin No Password Expiration',1);
        PNameUserMap =  TestDataFactory.CreateUser(ProfileUserNumMap);
		Test.setCurrentPage(Page.TimeOffEntry);
		Time_Off__c TO = new Time_Off__c();
		TimeOffEntrycontroller controller = new TimeOffEntrycontroller(new ApexPages.StandardController(TO));
		
		

		TO.employee__c = PNameUserMap.get('Local Market Specialist / Acquisition Team* / Transaction')[0].Id;
		TO.Date_Off__c = System.today();
		controller.TimeOffEntryList.add(TO);
		controller.SaveEntry();
	}

	@isTest
	static void itShouldnt()
	{
		Map <string,List<User>> PNameUserMap = new Map <string,List<User>> ();
        Map<String,Integer> ProfileUserNumMap = new Map<String,Integer> ();
        ProfileUserNumMap.put('Local Market Specialist / Acquisition Team* / Transaction',3);
        ProfileUserNumMap.put('System Admin No Password Expiration',1);
        PNameUserMap =  TestDataFactory.CreateUser(ProfileUserNumMap);
		Test.setCurrentPage(Page.TimeOffEntry);
		Time_Off__c TO = new Time_Off__c();
		TimeOffEntrycontroller controller = new TimeOffEntrycontroller(new ApexPages.StandardController(TO));
		controller.AddFiveEntry();
		controller.SaveEntry();
	}

}