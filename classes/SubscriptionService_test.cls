@isTest
private class SubscriptionService_test
{
	@isTest
	static void itShould()
	{
		list <String> PorchCompanyKeyList = new list <String> ();
		Map <String,Account> UserKeyAccountMap = new Map <String,Account> ();
		List <Account> AccountList = new List <Account> ();
		List <Contact> Contactlist = new List <Contact> ();

		PorchCompanyKeyList.add('3654789');
		AccountList = TestDataFactory.CreateAccount(PorchCompanyKeyList);
 		
 		UserKeyAccountMap.put('7894532',AccountList[0]);
		Contactlist = TestDataFactory.CreateContactWithAccount(UserKeyAccountMap);
		
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.httpMethod = 'PUT';
        req.requestURI = 'https://test.salesforce.com/services/apexrest/Subsc/Service/' + '123654789';
        RestContext.request = req;
        RestContext.response = res;
        
        Map<String, String> result = SubscriptionService.PutSubscriptionDetail('7894532','234','2015-08-25T20:25:01.268Z');
        System.assert(result != null, 'response is null');
        System.assertEquals(result.get('success'), 'true');
        
        List <case> CaseList = [SELECT Id From case where AccountId =: AccountList[0].id];
        
        System.assertEquals(1,CaseList.size());

	}
	
	@isTest
	static void checkDuplicate()
	{
		list <String> PorchCompanyKeyList = new list <String> ();
		Map <String,Account> UserKeyAccountMap = new Map <String,Account> ();
		List <Account> AccountList = new List <Account> ();
		List <Contact> Contactlist = new List <Contact> ();

		PorchCompanyKeyList.add('3654789');
		AccountList = TestDataFactory.CreateAccount(PorchCompanyKeyList);
 		
 		UserKeyAccountMap.put('7894532',AccountList[0]);
		Contactlist = TestDataFactory.CreateContactWithAccount(UserKeyAccountMap);


		
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.httpMethod = 'PUT';
        req.requestURI = 'https://test.salesforce.com/services/apexrest/Subsc/Service/' + '123654789';
        RestContext.request = req;
        RestContext.response = res;
        
        Map<String, String> result = SubscriptionService.PutSubscriptionDetail('7894532','234','2015-08-25T20:25:01.268Z');
        System.assert(result != null, 'response is null');
        System.assertEquals(result.get('success'), 'true');
        
        List <case> CaseList = [SELECT Id From case where AccountId =: AccountList[0].id];
        
        System.assertEquals(1,CaseList.size());

        Map<String, String> result2 = SubscriptionService.PutSubscriptionDetail('7894532','234','2015-08-25T20:25:01.268Z');
        System.assert(result2 != null, 'response is null');
        System.assertEquals(result2.get('success'), 'false');
        
        List <case> CaseList2 = [SELECT Id From case where AccountId =: AccountList[0].id];
        
        System.assertEquals(1,CaseList2.size());
	}

	@isTest
	static void itShouldnt()
	{
		list <String> PorchCompanyKeyList = new list <String> ();
		Map <String,Account> UserKeyAccountMap = new Map <String,Account> ();
		List <Account> AccountList = new List <Account> ();
		List <Contact> Contactlist = new List <Contact> ();

		PorchCompanyKeyList.add('3654789');
		AccountList = TestDataFactory.CreateAccount(PorchCompanyKeyList);
 		
 		UserKeyAccountMap.put('7894532',AccountList[0]);
		Contactlist = TestDataFactory.CreateContactWithAccount(UserKeyAccountMap);
		
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.httpMethod = 'PUT';
        req.requestURI = 'https://test.salesforce.com/services/apexrest/Subsc/Service/' + '123654789';
        RestContext.request = req;
        RestContext.response = res;
        
        Map<String, String> result = SubscriptionService.PutSubscriptionDetail('7894532','234','2015/08/25');
        System.assert(result != null, 'response is null');
        System.assertEquals(result.get('success'), 'false');
        
        List <case> CaseList = [SELECT Id From case where AccountId =: AccountList[0].id];
        
        System.assertEquals(0,CaseList.size());

	}
	
}