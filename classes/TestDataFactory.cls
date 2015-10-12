@isTest(seealldata=false)
public class TestDataFactory {
	
	Public static Map <string,List<User>> CreateUser(Map<string,Integer> ProfileUserNumMap) {
		List <Profile> ProfileList = [Select ID, name from Profile where Name in: ProfileUserNumMap.keyset()];
		List <User> UserList2Insert = new List <User> ();
		List <User> UserListByProfile;
		Map <string,List<User>> PNameUserMap = new Map <string,List<User>> (); 
		Map <Id,String> PIdPName = new Map <Id,String> ();
		User user2insert;
		for (Profile p: ProfileList){
			//UserListByProfile = new List<User> ();
			string s = p.Id;
			For(integer i=0;i<=ProfileUserNumMap.get(p.name);i++){
				user2insert = new User(Alias = 'standt', Email='standarduser'+i+'@testorg.com', 
            						EmailEncodingKey='UTF-8', LastName='Testing'+i, LanguageLocaleKey='en_US', 
            						LocaleSidKey='en_US', ProfileId = p.Id, 
            						TimeZoneSidKey='America/Los_Angeles', UserName= s+i+'@testorg.com');
				//UserListByProfile.add(user2insert);
				UserList2Insert.add(user2insert);
			}
			
			PIdPName.put(P.Id,P.name);
			//PNameUserMap.put(p.name,UserListByProfile);
		}
		If(UserList2Insert.size()>0){
			insert UserList2Insert;
		}
		for (user u: UserList2Insert){
			UserListByProfile = new List<User> ();
			If(PNameUserMap.containskey(PIdPName.get(u.ProfileId))){
				UserListByProfile = PNameUserMap.get(PIdPName.get(u.ProfileId));
				UserListByProfile.add(u);
				PNameUserMap.put(PIdPName.get(u.ProfileId),UserListByProfile);
			}else{
				UserListByProfile.add(u);
				PNameUserMap.put(PIdPName.get(u.ProfileId),UserListByProfile);
			}
		}
		return PNameUserMap;
	}
	
	Public static void CreateFeildmapping (List <string> ObjNameList){
		
		Porch_Event_Field_Mapping__c fieldMapping; 
		List <Porch_Event_Field_Mapping__c> fieldMappingList = new List <Porch_Event_Field_Mapping__c> ();
		For(String ObjName: ObjNameList){
			fieldMapping = new Porch_Event_Field_Mapping__c();
			fieldMapping.Name = ObjName;
			fieldMapping.Event__c = ObjName+' Info Update';
			fieldMapping.Fields_Tracked__c = 'Name';
			fieldMapping.Source_Type__c = ObjName;
			fieldMappingList.add(fieldMapping);
		}
		If(fieldMappingList.size()>0){
			insert fieldMappingList;	
		}
	}

	Public static List<Account> CreateAccount (List<String> CompanykeyList){
		List <Account> Accounts2Bcreated = new List <Account> ();
		Account a;
		integer i =0;
		For (String Compkey: CompanykeyList){
			a =new Account ();
			a.Porch_com_Company_Key_ID__c = Compkey;
			a.Name = Compkey+''+i;
			Accounts2Bcreated.add(a);
			++i;
		}
		If(Accounts2Bcreated.size()>0){
			insert Accounts2Bcreated;
			return Accounts2Bcreated;
		}else{
			return null;
		}

 	}
	
	Public static List<Contact> CreateContact (List<String> UserkeyList){
		List <Contact> Contacts2Bcreated = new List <Contact> ();
		Contact c;
		integer i =0;
		For (String Userkey: UserkeyList){
			c =new Contact ();
			c.Porch_com_User_Key_ID__c = Userkey;
			c.LastName = Userkey+''+i;
			Contacts2Bcreated.add(c);
			++i;
		}
		If(Contacts2Bcreated.size()>0){
			insert Contacts2Bcreated;
			return Contacts2Bcreated;
		}else{
			return null;
		}
 	}

 	Public static List<Contact> CreateContactWithAccount (Map<String,Account> UserkeyAccountMap){
		List <Contact> Contacts2Bcreated = new List <Contact> ();
		Contact c;
		integer i =0;
		For (String Userkey: UserkeyAccountMap.keyset()){
			c =new Contact ();
			c.Porch_com_User_Key_ID__c = Userkey;
			c.AccountId = UserkeyAccountMap.get(Userkey).id;
			c.LastName = Userkey+''+i;
			Contacts2Bcreated.add(c);
			++i;
		}
		If(Contacts2Bcreated.size()>0){
			insert Contacts2Bcreated;
			return Contacts2Bcreated;
		}else{
			return null;
		}
 	}
}