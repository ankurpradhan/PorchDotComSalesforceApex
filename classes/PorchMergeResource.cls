@RestResource(urlMapping='/porch/merge/*')
global with sharing class PorchMergeResource {

    @HttpPut
    global static Map<String, String> doPut(Id duplicateId){
        RestResponse restResponse = RestContext.response;
        Map<String, String> response = new Map<String, String>();
    	RestRequest req = RestContext.request;       
		Id masterId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        
        try{    
        	Schema.SObjectType sObjectType = masterId.getSObjectType();
        	system.debug('+++++ sObjectType='+ sObjectType);
            
            if(Account.sObjectType == sObjectType){
                mergeAccount(masterId, duplicateId);
                response.put('success', ''+true);
            }else if(Contact.sObjectType == sObjectType){
                mergeContact(masterId, duplicateId);
                response.put('success', ''+true);
            }else if(Lead.sObjectType == sObjectType){
                mergeLead(masterId, duplicateId);
                response.put('success', ''+true);
            }else{
 	            system.debug('$$$$$ unsupported objecttype. masterId='+ masterId + ', duplicateId=' + duplicateId  + ', sObjectType='+sObjectType);
    	        response.put('message', 'unsupported object. sObjectType=' + sObjectType);
        	    response.put('errorCode', 'SFDC_PORCH_EXCEPTION');
            	response.put('success', ''+false);
                restResponse.statusCode = 400;
            }
        }catch(Exception ex){
            system.debug('$$$$$ unable to merge masterId='+ masterId + ', duplicateId=' + duplicateId  + ', ex='+ex);
            response.put('message', ex.getMessage());
            response.put('errorCode', 'SFDC_PORCH_EXCEPTION');
            response.put('success', ''+false);
            restResponse.statusCode = 400;
        }
      	return response;                 
    }
    
    global static void mergeAccount(Id masterId, Id duplicateId){
        Account master = (Account)Account.SObjectType.newSObject(masterId);
		Account duplicate = (Account)Account.SObjectType.newSObject(duplicateId);
        merge master duplicate;
    }
    
    global static void mergeContact(Id masterId, Id duplicateId){
        Contact master = (Contact)Contact.SObjectType.newSObject(masterId);
		Contact duplicate = (Contact)Contact.SObjectType.newSObject(duplicateId);
        merge master duplicate;
    }
    
    global static void mergeLead(Id masterId, Id duplicateId){
        Lead master = (Lead)Lead.SObjectType.newSObject(masterId);
		Lead duplicate = (Lead)Lead.SObjectType.newSObject(duplicateId);
        merge master duplicate;
    }
}