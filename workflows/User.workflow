<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Clear_Agent_ID</fullName>
        <field>NVMContactWorld__NVM_Agent_Id__c</field>
        <name>Clear Agent ID</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_Exit_Date</fullName>
        <field>Exit_Date__c</field>
        <formula>TODAY()</formula>
        <name>Stamp Exit Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Delete NVM Agent ID</fullName>
        <actions>
            <name>Clear_Agent_ID</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Upon user deactivation, deletes data in the NVM agent ID field</description>
        <formula>if(
IsActive = FALSE
,TRUE
,FALSE
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Populate Exit Date</fullName>
        <actions>
            <name>Stamp_Exit_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>if(IsActive = FALSE
,TRUE
,FALSE
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
