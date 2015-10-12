global class SelectPresentedClidByTableAreaCode implements NVMContactWorld.ISelectPresentedClid{

    // The clickToDialResult parameter contains the response string from the Salesforce ClickToDial event.
    // Salesforce passes the clickToDialResult parameter to us:
    // for example '{number: "07890123456", objectId: "0032000001FTGSo", object: "Contact"}'
    // Find more information at: https://www.salesforce.com/us/developer/docs/api_cti/Content/sforce_api_cti_onclicktodial.htm

    global String GetPresentedClid(String clickToDialResult){


        System.debug('Starting class SelectPresentedClidByTableAreaCode');
        Map<String,Object> clickToDialResultMap = (Map<String,Object>)JSON.deserializeUntyped(clickToDialResult);
        String customerNumber = (String)clickToDialResultMap.get('number');

        String AreaCodeI = customerNumber.mid(2,3);
        // For International formatting, Trying to remove the +1 and return only the area code
        String AreaCodeNA = customerNumber.mid(1,3); 
        // For Non International - Trying to remove the Left parenthesis and return only the area code 

        //Account default
        String presentedClid = '0018557376555';

        System.debug('Customer number is ' + customerNumber + 'AreaCodeI is + ' + AreaCodeI + ' and AreaCodeNA is ' + AreaCodeNA);

        if (customerNumber.startsWith('(999)') ) 
        {
            presentedClid = '0012065382819';
        } 
        else if (customerNumber.startsWith('+1')) {

            System.debug('Looking up +1 AreaCodeI');
            AreaCodeMap__c a = [SELECT CLIDValue__c FROM AreaCodeMap__c WHERE AreaCode__c = :AreaCodeI];
            System.debug('Query is SELECT CLIDValue__c FROM AreaCodeMap__c WHERE AreaCode__c = : ' + AreaCodeI);

            if(a.CLIDValue__c != null) {
                presentedClid = a.CLIDValue__c;
                System.debug('Result found - changing CLID');


            } else {     
                presentedClid = '0012065382819';
                System.debug('No result');


            }
            //For international numbers, trying to match the Variable AreaCodeI to the AreaCode__c to return the 
            // number to present as the CLID
        } 
        else 
        {AreaCodeMap__c b = [SELECT CLIDValue__c FROM AreaCodeMap__c WHERE AreaCode__c = :AreaCodeNA];
         System.debug('Query is SELECT CLIDValue__c FROM AreaCodeMap__c WHERE AreaCode__c = : '+ AreaCodeNA);
         if(b.CLIDValue__c != null) {
             System.debug('found' + b.CLIDValue__c);
             presentedClid = b.CLIDValue__c;
             System.debug('Looking up +1 AreaCodeNA');


         } else {     
             presentedClid = '123123123';
             System.debug('No result found');


         }                                                            
         //For NON international numbers, trying to match the Variable AreaCodeNA to the AreaCode__c to  
         // return the number to present as the CLID
        }

        return presentedClid;   
    }
}