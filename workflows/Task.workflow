<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Basho_Emil</fullName>
        <field>Basho_Email__c</field>
        <literalValue>1</literalValue>
        <name>Basho Emil</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Close_Task</fullName>
        <field>Status</field>
        <literalValue>Completed</literalValue>
        <name>Close Task</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Complete_Dialler_Log_Task</fullName>
        <field>Status</field>
        <literalValue>Completed</literalValue>
        <name>Complete Dialler Log Taks</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Dailler_Logs</fullName>
        <field>OwnerId</field>
        <lookupValue>michaelmartin@porch.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Dailler Logs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Company_Phone</fullName>
        <field>Company_Phone__c</field>
        <formula>Account.Phone</formula>
        <name>Populate Company Phone</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Remove_Leading_1</fullName>
        <field>Company_Phone__c</field>
        <formula>RIGHT(Company_Phone__c,10)</formula>
        <name>Remove Leading 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Role_when_Created</fullName>
        <field>Role_when_Created__c</field>
        <formula>Owner:User.UserRole.Name</formula>
        <name>Role when Created</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_CBSA</fullName>
        <field>CBSA__c</field>
        <formula>IF  (ISBLANK(CBSA__c), Account.CBSA_Name__c, Owner:User.Alias)</formula>
        <name>Update CBSA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Warm_Pass_Role</fullName>
        <field>Warm_Pass_Role__c</field>
        <formula>Warm_Pass_by__r.UserRole.Name</formula>
        <name>Warm Pass Role</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Basho Email</fullName>
        <actions>
            <name>Basho_Emil</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>equals</operation>
            <value>Basho Email</value>
        </criteriaItems>
        <description>Updates Basho Email checkbox if Task Subject = Basho Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Close Tasks</fullName>
        <actions>
            <name>Close_Task</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Close_Task__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Create Dial Lists</fullName>
        <actions>
            <name>Create_Diallists</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Status</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Subject</field>
            <operation>equals</operation>
            <value>Create NVM Logins</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Dialler Logs</fullName>
        <actions>
            <name>Complete_Dialler_Log_Task</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Dailler_Logs</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Subject</field>
            <operation>startsWith</operation>
            <value>Dialler Logs</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>NVM Logins</fullName>
        <actions>
            <name>Create_NVM_Logins</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Task.Subject</field>
            <operation>equals</operation>
            <value>Create Salesforce Logins</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Status</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Populate CBSA</fullName>
        <actions>
            <name>Update_CBSA</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Task.CBSA__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Populate Company Phone</fullName>
        <actions>
            <name>Populate_Company_Phone</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.OwnerId</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Remove Leading 1 from Task Phone</fullName>
        <actions>
            <name>Remove_Leading_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>if(and(len(Company_Phone__c) == 11 , left(Company_Phone__c,1) = &apos;1&apos;)
,TRUE
,FALSE
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Role when Created</fullName>
        <actions>
            <name>Role_when_Created</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Salesforce Logins</fullName>
        <actions>
            <name>Create_Salesforce_Logins</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Subject</field>
            <operation>equals</operation>
            <value>Request NVM Numbers</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Status</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Warm Pass Role</fullName>
        <actions>
            <name>Warm_Pass_Role</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Warm_Pass_by__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Create_Diallists</fullName>
        <assignedTo>michaelmartin@porch.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Create Diallists</subject>
    </tasks>
    <tasks>
        <fullName>Create_NVM_Logins</fullName>
        <assignedTo>michaelmartin@porch.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Create NVM Logins</subject>
    </tasks>
    <tasks>
        <fullName>Create_Salesforce_Logins</fullName>
        <assignedTo>sfsalesops@porch.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Create Salesforce Logins</subject>
    </tasks>
</Workflow>
