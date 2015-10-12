<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Reassign_Contact</fullName>
        <description>Assigns Welcome Calls to Zach Veasy</description>
        <field>OwnerId</field>
        <lookupValue>zachv@porch.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Reassign Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Replace_Phone</fullName>
        <description>Replaces the blank phone field with the MobilePhone field</description>
        <field>Phone</field>
        <formula>MobilePhone</formula>
        <name>Replace Phone</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Phone_Number</fullName>
        <field>Phone</field>
        <formula>Account.Phone</formula>
        <name>Update Phone Number</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Assign Welcome Call</fullName>
        <actions>
            <name>Reassign_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.LeadSource</field>
            <operation>equals</operation>
            <value>Welcome Call</value>
        </criteriaItems>
        <description>Assigns welcome call contacts to Zach Veasy for distribution</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Missing Phone FIX</fullName>
        <actions>
            <name>Replace_Phone</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If the primary phone number is missing on a contact, this workflow looks to the mobile number to replace it.  This workflow was built to allow for the Inbound team to use contacts in dial lists.</description>
        <formula>if(ISBLANK(Phone)
,TRUE
,FALSE 
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Phone Number Blank</fullName>
        <actions>
            <name>Update_Phone_Number</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Phone</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
