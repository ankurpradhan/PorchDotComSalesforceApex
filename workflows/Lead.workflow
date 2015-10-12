<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Queue_Low_Volume_Warning</fullName>
        <description>Queue Low Volume Warning</description>
        <protected>false</protected>
        <recipients>
            <recipient>michaelmartin@porch.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/HTML_Email_Test_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>Approved</fullName>
        <field>OwnerId</field>
        <lookupValue>Pro_porch_Approved</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Atlanta_Sandy_Springs_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Atlanta_Sandy_Springs_Marietta_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Atlanta-Sandy Springs MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Attempted_Lead_Recycling</fullName>
        <description>Field Update changes the lead owner from the CURRENT owner to the Revenue Queue</description>
        <field>OwnerId</field>
        <lookupValue>Revenue_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Attempted Lead Recycling</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Austin_Round_Rock_TX_ROute</fullName>
        <field>OwnerId</field>
        <lookupValue>Austin_Round_Rock_TX_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Austin-Round Rock, TX ROute</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Bad_Lead_Change_Owner</fullName>
        <field>OwnerId</field>
        <lookupValue>Sales_Ops_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Bad Lead Change Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Bad_Lead_Date</fullName>
        <field>Bad_Lead_Date__c</field>
        <formula>Today()</formula>
        <name>Bad Lead Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Bad_Lead_Dupe</fullName>
        <field>Bad_Lead_Detail__c</field>
        <literalValue>Duplicate</literalValue>
        <name>Bad Lead Dupe</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Bad_Lead_Marked_by_Rep</fullName>
        <field>Bad_Lead_Marked_by_Rep__c</field>
        <literalValue>1</literalValue>
        <name>Bad Lead Marked by Rep</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Baltimore_Towson_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Baltimore_Towson_MD_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Baltimore-Towson MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Birmingham_Hoover_AL_Metro_Area</fullName>
        <field>OwnerId</field>
        <lookupValue>Birmingham_Hoover_AL_Metro_Area</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Birmingham-Hoover, AL Metro Area Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Boston_Cambridge_Newton_MA_NH_Routing</fullName>
        <field>OwnerId</field>
        <lookupValue>Boston_Cambridge_Newton_MA_NH_Metro_Are</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Boston-Cambridge-Newton, MA-NH Routing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Bridgeport_Stamford_Norwalk_CT_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Bridgeport_Stamford_Norwalk_CT_Metro_Ar</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Bridgeport-Stamford-Norwalk, CT Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Cape_Coral_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Cape_Coral_Fort_Myers_FL_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Cape Coral MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Charlotte_Concord_Gastonia_NC_SC_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Charlotte_Concord_Gastonia_NC_SC_Metro</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Charlotte-Concord-Gastonia, NC-SC Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Chicago_Area_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Chicago_Quality_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Chicago Area MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Cleveland_Elyria_Fort_Myers_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Cleveland_Elyria_Mentor_OH_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Cleveland-Elyria-Fort Myers MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Dallas_Fort_Worth_Arlington_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Dallas_Fort_Worth_Arlington_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Dallas-Fort Worth-Arlington MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Deltona_Daytona_Beach_FL_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Daytona_Beach_Deltona_FL_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Deltona-Daytona Beach FL MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Denver_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Denver_Aurora_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Denver Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Detroit_Warren_Livonia_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Detroit_Warren_Livonia_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Detroit-Warren-Livonia MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Do_Not_Call</fullName>
        <field>OwnerId</field>
        <lookupValue>Sales_Ops_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Do Not Call</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Dupe</fullName>
        <field>Status</field>
        <literalValue>Bad Lead</literalValue>
        <name>Dupe</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DupeOwner</fullName>
        <field>OwnerId</field>
        <lookupValue>Sales_Ops_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>DupeOwner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Greensboro_Reassign</fullName>
        <field>OwnerId</field>
        <lookupValue>Greensboro_High_Point_NC_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Greensboro Reassign</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Hartford_West_Hartford_East_Har_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Hartford_West_Hartford_East_Hartford_CT</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Hartford-West Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Houston_Sugar_Land_TX_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Houston_Sugar_Land_Baytown_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Houston-Sugar Land, TX MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Indianapolis_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Indianapolis_MSA_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Indianapolis MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Jacksonville_FL_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Jacksonville_FL_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Jacksonville, FL MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Kansas_City_MO_KS_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Kansas_City_MO_KS_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Kansas City, MO-KS MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Las_Vegas_Paradise_NV_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Las_Vegas_Paradise_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Las Vegas-Paradise, NV MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Status_Update</fullName>
        <field>Last_Status_Update__c</field>
        <formula>TODAY()</formula>
        <name>Lead Status Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Memphis_TN_AR_MS_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Memphis_TN_AR_MS_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Memphis, TN-AR-MS MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Miami_Fort_Lauderdale_West_Palm_B_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Miami_Fort_Lauderdale_West_Palm_Beach_F</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Miami-Fort Lauderdale-West Palm B Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Milwaukee_Waukesha_West_Allis_WI_MSA_Ro</fullName>
        <field>OwnerId</field>
        <lookupValue>Milwaukee_Waukesha_West_Allis_WI_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Milwaukee-Waukesha-West Allis, WI MSA Ro</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Minneapolis_St_Paul_Bloomington_MN_WI</fullName>
        <field>OwnerId</field>
        <lookupValue>Minneapolis_St_Paul_Bloomington_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Minneapolis-St. Paul-Bloomington, MN-WI</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Nashville_Davidson_Murfreesboro_Franklin</fullName>
        <field>OwnerId</field>
        <lookupValue>Nashville_TN_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Nashville-Davidson-Murfreesboro-Franklin</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>New_Orleans_Metairie_LA_Metro_Routing</fullName>
        <field>OwnerId</field>
        <lookupValue>New_Orleans_Metairie_LA_Metro_Area</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>New Orleans-Metairie, LA Metro Routing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Omaha_Council_Bluffs_NE_IA_Metro_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Omaha_Council_Bluffs_NE_IA_Metro_Area</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Omaha-Council Bluffs, NE-IA Metro Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Open_Lead_Recycle</fullName>
        <description>Send open/uncontacted leads that have not been contacted within the first 48 hours of ownership to the revenue queue.</description>
        <field>OwnerId</field>
        <lookupValue>Revenue_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Open Lead Recycle</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Orlando_Kissimee_FL_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Orlando_Kissimmee_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Orlando-Kissimee, FL MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Philadelphia_Camden_Wilmington_Routing</fullName>
        <field>OwnerId</field>
        <lookupValue>Philadelphia_Camden_Wilmington_PA_NJ_DE</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Philadelphia-Camden-Wilmington Routing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Phoenix_Mesa_Scottsdale_AZ_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Phoenix_Mesa_Scottsdale_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Phoenix-Mesa-Scottsdale, AZ MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pittsburgh_PA_MSA_Reassign</fullName>
        <field>OwnerId</field>
        <lookupValue>Pittsburgh_PA_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Pittsburgh, PA MSA Reassign</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Portland_Vancouver_Beaverton_OR_WA_MSA</fullName>
        <field>OwnerId</field>
        <lookupValue>Portland_Vancourver_Beaverton_OR_WA_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Portland-Vancouver-Beaverton, OR-WA MSA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Raleigh_NC_Metro_Area_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Raleigh_NC_Metro_Area</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Raleigh, NC Metro Area Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Recycle_Button_Activate</fullName>
        <field>Recycle_Check__c</field>
        <literalValue>1</literalValue>
        <name>Recycle Button Activate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Recycle_Counter</fullName>
        <field>Recycle_Counter__c</field>
        <formula>IF( 
ISNULL(  Recycle_Counter__c  ), 
1, 
Recycle_Counter__c + 1 
)</formula>
        <name>Recycle Counter</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Recycling_Button_Deactivate</fullName>
        <description>This workflow sets the recycled check button to false</description>
        <field>Recycle_Check__c</field>
        <literalValue>0</literalValue>
        <name>Recycling Button Deactivate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Richmond_VA_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Richmond_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Richmond, VA MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Riverside_San_Bernardino_CA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Riverside_San_Bernardino_Ontario_CA_Met</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Riverside-San Bernardino, CA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sacramento_Arden_Arcade_Roseville_CA_MS</fullName>
        <field>OwnerId</field>
        <lookupValue>Sacramento_Arden_Arcade_Roseville_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Sacramento-Arden-Arcade-Roseville, CA MS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>San_Antonio_New_Braunfels_TX_Metro_Rout</fullName>
        <field>OwnerId</field>
        <lookupValue>San_Antonio_New_Braunfels_TX_Metro_Area</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>San Antonio-New Braunfels, TXMetro Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>San_Antonio_TX_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>San_Antonio_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>San Antonio, TX MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>San_Diego_Carlsbad_San_Marcos_CA_MSA_Ro</fullName>
        <field>OwnerId</field>
        <lookupValue>San_Diego_Carlsbad_San_Marcos_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>San Diego-Carlsbad-San Marcos, CA MSA Ro</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>San_Francisco_Oakland_Hayward_CA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>San_Francisco_Oakland_Hayward_CA_Metro</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>San Francisco-Oakland-Hayward, CA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>San_Jose_Sunnyvale_Santa_Clara_CA_MSA_R</fullName>
        <field>OwnerId</field>
        <lookupValue>San_Jose_Sunnyvale_Santa_Clara_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>San Jose-Sunnyvale-Santa Clara, CA MSA R</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Seattle_Coverage_Zone_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Seattle_Quality_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Seattle Coverage Zone Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>St_Louis_MO_IL_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>St_Louis_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>St. Louis, MO-IL MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Tampa_St_Petersburg_Clearwater_FL_MSA</fullName>
        <field>OwnerId</field>
        <lookupValue>Tampa_St_Petersburg_Clearwater_FL_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Tampa-St. Petersburg-Clearwater, FL MSA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>To_Columbus_OH_MSA</fullName>
        <description>Send leads that were just recycled to the revenue queue to the Columbus MSA Queue</description>
        <field>OwnerId</field>
        <lookupValue>Columbus_OH_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>To Columbus, OH MSA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Do_Not_Call_to_True</fullName>
        <field>DoNotCall</field>
        <literalValue>1</literalValue>
        <name>Update Do Not Call to True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Mobile_Copy</fullName>
        <field>Mobile_Copy__c</field>
        <formula>MobilePhone</formula>
        <name>Update Mobile Copy</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Old_Phone_Number</fullName>
        <field>Old_Phone_Number__c</field>
        <formula>PRIORVALUE(Phone)</formula>
        <name>Update Old Phone Number</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Virginia_Beach_routing</fullName>
        <field>OwnerId</field>
        <lookupValue>Virginia_MSA_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Virginia Beach routing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Virginia_MSA_Route</fullName>
        <field>OwnerId</field>
        <lookupValue>Virginia_MSA_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Virginia MSA Route</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Warm_Pass_Date</fullName>
        <field>Warm_Pass_Date__c</field>
        <formula>NOW()</formula>
        <name>Warm Pass Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Washington_Arligton_Alexandria_DC_VA_MD</fullName>
        <field>OwnerId</field>
        <lookupValue>Washington_Arlington_Alexandria_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Washington-Arligton-Alexandria, DC-VA-MD</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>cincinnati</fullName>
        <field>OwnerId</field>
        <lookupValue>Cincinnati_Middletown_OH_KY_IN_MSA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>cincinnati</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Approved</fullName>
        <actions>
            <name>Approved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Approved__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Atlanta-Sandy Springs CBSA Route</fullName>
        <actions>
            <name>Atlanta_Sandy_Springs_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Atlanta-Sandy Springs-Roswell, GA Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Attempted Lead Recycling</fullName>
        <actions>
            <name>Attempted_Lead_Recycling</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>This workflow recycles leads that have 1) Have been attempted and 2) have not had activity for 7 days.</description>
        <formula>IF(AND(ISPICKVAL(Status,&quot;Attempted&quot;),TODAY() = Last_Completed_Activity_Date__c + 7,TODAY() = (datevalue(LastModifiedDate) + 7))
,TRUE
,FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Austin-Round Rock%2C TX CBSA Route</fullName>
        <actions>
            <name>Austin_Round_Rock_TX_ROute</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Austin-Round Rock, TX Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Bad Lead Marked by Rep</fullName>
        <actions>
            <name>Bad_Lead_Marked_by_Rep</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>equals</operation>
            <value>Local Market Specialist / Acquisition Team* / Transaction</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Bad Lead</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Baltimore-Columbia-Towson%2C MD Metro Area Recycling</fullName>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Baltimore-Columbia-Towson, MD Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Birmingham-Hoover%2C AL Metro Area</fullName>
        <actions>
            <name>Birmingham_Hoover_AL_Metro_Area</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Birmingham-Hoover, AL Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Boston-Cambridge-Newton%2C MA-NH Metro Area Recycling</fullName>
        <actions>
            <name>Boston_Cambridge_Newton_MA_NH_Routing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Boston-Cambridge-Newton, MA-NH Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Bridgeport-Stamford-Norwalk%2C CT Metro Area Recycling</fullName>
        <actions>
            <name>Bridgeport_Stamford_Norwalk_CT_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Bridgeport-Stamford-Norwalk, CT Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Cape Coral CBSA Route</fullName>
        <actions>
            <name>Cape_Coral_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Cape Coral-Fort Myers, FL Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Charlotte-Concord-Gastonia%2C NC-SC Metro Area Recycling</fullName>
        <actions>
            <name>Charlotte_Concord_Gastonia_NC_SC_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Charlotte-Concord-Gastonia, NC-SC Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Chicago Area CBSA Route</fullName>
        <actions>
            <name>Chicago_Area_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Chicago-Naperville-Elgin, IL-IN-WI Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Cincinatti CBSA Recycling Route</fullName>
        <actions>
            <name>cincinnati</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Cincinnati, OH-KY-IN Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Cleveland-Elyria-Fort Myers CBSA Route</fullName>
        <actions>
            <name>Cleveland_Elyria_Fort_Myers_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Cleveland-Elyria, OH Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Columbus OH CBSA Route</fullName>
        <actions>
            <name>To_Columbus_OH_MSA</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Columbus, OH Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Dallas-Fort Worth-Arlington CBSA Route</fullName>
        <actions>
            <name>Dallas_Fort_Worth_Arlington_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Dallas-Fort Worth-Arlington, TX Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Deltona-Daytona Beach FL CBSA Route</fullName>
        <actions>
            <name>Deltona_Daytona_Beach_FL_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Deltona-Daytona Beach-Ormond Beach, FL Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Denver-Aurora-Lakewood%2C CO Metro Area Route</fullName>
        <actions>
            <name>Denver_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkIEAW&apos;
,CBSA_Name__c = &apos;Denver-Aurora-Lakewood, CO Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Detroit-Warren-Livonia CBSA Route</fullName>
        <actions>
            <name>Detroit_Warren_Livonia_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Detroit-Warren-Dearborn, MI Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Do Not Call</fullName>
        <actions>
            <name>Do_Not_Call</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.DoNotCall</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Dupe</fullName>
        <actions>
            <name>Bad_Lead_Dupe</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Dupe</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DupeOwner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Dupe__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Greensboro%2C NC CBSA Route</fullName>
        <actions>
            <name>Greensboro_Reassign</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkIEAW&apos;
,CBSA_Name__c = &apos;Greensboro-High Point, NC Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Hartford-West Hartford-East Hartford%2C CT Metro Area Recycling</fullName>
        <actions>
            <name>Hartford_West_Hartford_East_Har_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Hartford-West Hartford-East Hartford, CT Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Houston-Sugar Land%2C TX CBSA Route</fullName>
        <actions>
            <name>Houston_Sugar_Land_TX_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>and(LastTransferDate = TODAY(), OwnerId = &apos;00Gj0000001HMkI&apos;, CBSA_Name__c = &apos;Houston-The Woodlands-Sugar Land, TX Metro Area&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Indianapolis CBSA Route</fullName>
        <actions>
            <name>Indianapolis_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,OR(CBSA_Name__c = &apos;Indianapolis-Carmel-Anderson, IN Metro Area&apos;, CBSA_Name__c = &apos;Indianapolis-Carmel-Anderson, IN Metro Area&apos;))
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Jacksonville%2C FL CBSA Route</fullName>
        <actions>
            <name>Jacksonville_FL_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Jacksonville, FL Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Kansas City%2C MO-KS CBSA Route</fullName>
        <actions>
            <name>Kansas_City_MO_KS_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Kansas City, MO-KS Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Las Vegas-Paradise%2C NV CBSA Route</fullName>
        <actions>
            <name>Las_Vegas_Paradise_NV_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Las Vegas-Henderson-Paradise, NV Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Last Status Update</fullName>
        <actions>
            <name>Lead_Status_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Status )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead Open</fullName>
        <active>false</active>
        <formula>AND
(ISCHANGED (OwnerId),
 ISPICKVAL(Status, &quot;Open&quot;)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Memphis%2C TN-AR-MS CBSA Route</fullName>
        <actions>
            <name>Memphis_TN_AR_MS_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Memphis, TN-MS-AR Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Miami-Fort Lauderdale-West Palm Beach%2C FL Metro Recycling</fullName>
        <actions>
            <name>Miami_Fort_Lauderdale_West_Palm_B_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Miami-Fort Lauderdale-West Palm Beach, FL Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Milwaukee-Waukesha-West Allis%2C WI CBSA Route</fullName>
        <actions>
            <name>Milwaukee_Waukesha_West_Allis_WI_MSA_Ro</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Milwaukee-Waukesha-West Allis, WI Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Minneapolis-St%2E Paul-Bloomington%2C MN-WI CBSA Route</fullName>
        <actions>
            <name>Minneapolis_St_Paul_Bloomington_MN_WI</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Minneapolis-St. Paul-Bloomington, MN-WI Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Nashville-Davidson-Murfreesboro-Franklin%2C TN CBSA Route</fullName>
        <actions>
            <name>Nashville_Davidson_Murfreesboro_Franklin</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Nashville-Davidson--Murfreesboro--Franklin, TN Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New Orleans-Metairie%2C LA Metro Area Recycling</fullName>
        <actions>
            <name>New_Orleans_Metairie_LA_Metro_Routing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;New Orleans-Metairie, LA Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Omaha-Council Bluffs%2C NE-IA Metro Area Recycling</fullName>
        <actions>
            <name>Omaha_Council_Bluffs_NE_IA_Metro_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Omaha-Council Bluffs, NE-IA Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Orlando-Kissimee%2C FL CBSA Route</fullName>
        <actions>
            <name>Orlando_Kissimee_FL_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Orlando-Kissimmee-Sanford, FL Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Philadelphia-Camden-Wilmington%2C PA-NJ-DE-MD Metro Reycling</fullName>
        <actions>
            <name>Philadelphia_Camden_Wilmington_Routing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Philadelphia-Camden-Wilmington, PA-NJ-DE-MD Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Phoenix-Mesa-Scottsdale%2C AZ CBSA Route</fullName>
        <actions>
            <name>Phoenix_Mesa_Scottsdale_AZ_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Phoenix-Mesa-Scottsdale, AZ Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pittsburgh%2C PA CBSA Route</fullName>
        <actions>
            <name>Pittsburgh_PA_MSA_Reassign</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Pittsburgh, PA Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Populate Mobile Phone Duplicate</fullName>
        <actions>
            <name>Update_Mobile_Copy</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.MobilePhone</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Portland-Vancouver-Beaverton%2C OR-WA CBSA Route</fullName>
        <actions>
            <name>Portland_Vancouver_Beaverton_OR_WA_MSA</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Portland-Vancouver-Hillsboro, OR-WA Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Raleigh%2C NC Metro Area Recycling</fullName>
        <actions>
            <name>Raleigh_NC_Metro_Area_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Raleigh, NC Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Reassign Bad Leads</fullName>
        <actions>
            <name>Bad_Lead_Change_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Bad_Lead_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Bad Lead,Commercial,Not Interested,Exhausted,Untargeted Area,Untargeted Pro Type,Not Qualified</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Recycle Check Reset</fullName>
        <actions>
            <name>Recycling_Button_Deactivate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>If the recycle check button this workflow will reset it after 24 hours</description>
        <formula>if(  Recycle_Check__c = TRUE
, TRUE
, FALSE
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Recycle Date Counter</fullName>
        <actions>
            <name>Recycle_Counter</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>IF(  Recycle_Date__c  &gt; PRIORVALUE( Recycle_Date__c  ), IF (DAY(Recycle_Date__c ) &lt;&gt; DAY(PRIORVALUE( Recycle_Date__c  )) , TRUE, FALSE), FALSE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Richmond%2C VA CBSA Route</fullName>
        <actions>
            <name>Richmond_VA_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Richmond, VA Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Riverside-San Bernardino-Ontario%2C CA Metro Recycling</fullName>
        <actions>
            <name>Riverside_San_Bernardino_CA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Riverside-San Bernardino-Ontario, CA Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sacramento-Arden-Arcade-Roseville%2C CA CBSA Route</fullName>
        <actions>
            <name>Sacramento_Arden_Arcade_Roseville_CA_MS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Sacramento--Roseville--Arden-Arcade, CA Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>San Antonio%2C TX CBSA Route</fullName>
        <actions>
            <name>San_Antonio_TX_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;San Antonio-New Braunfels, TX Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>San Antonio-New Braunfels%2C TX Metro Area Recycling</fullName>
        <actions>
            <name>San_Antonio_New_Braunfels_TX_Metro_Rout</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;San Antonio-New Braunfels, TX Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>San Diego-Carlsbad-San Marcos%2C CA CBSA Route</fullName>
        <actions>
            <name>San_Diego_Carlsbad_San_Marcos_CA_MSA_Ro</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;San Diego-Carlsbad, CA Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>San Francisco-Oakland-Hayward%2C CA Metro Area Recycling</fullName>
        <actions>
            <name>San_Francisco_Oakland_Hayward_CA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;San Francisco-Oakland-Hayward, CA Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>San Jose-Sunnyvale-Santa Clara%2C CA CBSA Route</fullName>
        <actions>
            <name>San_Jose_Sunnyvale_Santa_Clara_CA_MSA_R</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;San Jose-Sunnyvale-Santa Clara, CA Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Seattle-Tacoma CBSA</fullName>
        <actions>
            <name>Seattle_Coverage_Zone_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Seattle-Tacoma-Bellevue, WA Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>St%2E Louis%2C MO-IL CBSA Route</fullName>
        <actions>
            <name>St_Louis_MO_IL_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;St. Louis, MO-IL Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Tampa-St%2E Petersburg-Clearwater%2C FL CBSA Route</fullName>
        <actions>
            <name>Tampa_St_Petersburg_Clearwater_FL_MSA</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Tampa-St. Petersburg-Clearwater, FL Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Uncontacted Lead Recycling</fullName>
        <actions>
            <name>Open_Lead_Recycle</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>This workflow recycles open/uncontacted leads that have not been contacted within 48 hours of seller acquisition.</description>
        <formula>if(AND( ISPICKVAL(Status, &quot;Open&quot;)
,(TODAY() &gt;= (Last_Completed_Activity_Date__c + 2)))                  
,  TRUE
,  FALSE
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Recycle_Button_Activate</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Lead.LastModifiedDate</offsetFromField>
            <timeLength>24</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update Do Not Call Field</fullName>
        <actions>
            <name>Update_Do_Not_Call_to_True</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.DoNotCall</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Bad_Lead_Detail__c</field>
            <operation>equals</operation>
            <value>Do Not Call</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Old Phone Number Field</fullName>
        <actions>
            <name>Update_Old_Phone_Number</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(Phone)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Virginia Beach-Norfolk-Newport News%2C VA-NC</fullName>
        <actions>
            <name>Virginia_Beach_routing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Virginia Beach-Norfolk-Newport News, VA-NC Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Virginia Beach-Norfolk-Newport News%2C VA-NC Route</fullName>
        <actions>
            <name>Virginia_MSA_Route</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkIEAW&apos;
,MSA__c = &apos;CVirginia Beach-Norfolk-Newport News, VA-NC&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Warm Pass Date</fullName>
        <actions>
            <name>Warm_Pass_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Warm_Pass_by__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Washington-Arligton-Alexandria%2C DC-VA-MD-WV CBSA Route</fullName>
        <actions>
            <name>Washington_Arligton_Alexandria_DC_VA_MD</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When leads meeting zipcode/MSA criteria are put back into the Revenue queue this workflow routes those leads to the appropriate MSA queue.</description>
        <formula>if(and(LastTransferDate = Today(), OwnerId = &apos;00Gj0000001HMkI&apos;
,CBSA_Name__c = &apos;Washington-Arlington-Alexandria, DC-VA-MD-WV Metro Area&apos;)
, TRUE
, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
