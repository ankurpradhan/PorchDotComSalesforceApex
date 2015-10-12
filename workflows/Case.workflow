<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Bulk_Project_Case_Closed</fullName>
        <description>Bulk Project Case Closed</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications_Cases/Case_Close_Notification</template>
    </alerts>
    <alerts>
        <fullName>Case_Email_Alert</fullName>
        <description>Case Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications_Cases/Michael_s_Case_Template</template>
    </alerts>
    <alerts>
        <fullName>Case_assigned</fullName>
        <description>Case assigned</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications_Cases/Case_Assi</template>
    </alerts>
    <alerts>
        <fullName>Delinquent_Account_Cancellation</fullName>
        <description>Delinquent Account Cancellation</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Account_Management/Delinquent_Account_has_been_Cancelled</template>
    </alerts>
    <alerts>
        <fullName>License_BBB_Case_Closed</fullName>
        <description>License BBB Case Closed</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications_Cases/Case_Close_License</template>
    </alerts>
    <alerts>
        <fullName>Pre_Vet_Status</fullName>
        <ccEmails>daniele@porch.com</ccEmails>
        <description>Pre-Vet Status</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Account_Management/Pre_Vet_Status</template>
    </alerts>
    <fieldUpdates>
        <fullName>License_Request</fullName>
        <field>OwnerId</field>
        <lookupValue>License_Requests</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>License Request</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_Owner_Role_Field</fullName>
        <field>Creator_Role__c</field>
        <formula>Account.Owner.UserRole.Name</formula>
        <name>Stamp Owner Role Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Upate_to_Rod</fullName>
        <field>OwnerId</field>
        <lookupValue>rodb@porch.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Upate to Rod</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Account_Phone</fullName>
        <field>Account_Phone__c</field>
        <formula>Account.Phone</formula>
        <name>Update Account Phone</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Owner</fullName>
        <field>OwnerId</field>
        <lookupValue>BBB</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Seller_Role</fullName>
        <field>Seller_Role__c</field>
        <formula>Account.SalesPerson2__r.UserRole.Name</formula>
        <name>Update Seller Role</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Subject</fullName>
        <field>Subject</field>
        <formula>Account.Name &amp; &quot;Mis-Sold&quot;</formula>
        <name>Update Subject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_to_Bulk_Project_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Bulk_Project</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update to Bulk Project Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_to_David</fullName>
        <field>OwnerId</field>
        <lookupValue>davidv@porch.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Update to David</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_to_Jane</fullName>
        <field>OwnerId</field>
        <lookupValue>janel@porch.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Update to Jane</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_to_Steve</fullName>
        <field>OwnerId</field>
        <lookupValue>steveh@porch.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Update to Steve</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Add Seller Role</fullName>
        <actions>
            <name>Update_Seller_Role</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>BBB Case</fullName>
        <actions>
            <name>Update_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>BBB</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>CRM admin case Email alert</fullName>
        <actions>
            <name>Case_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>equals</operation>
            <value>Heidi Brose,Michael Martin</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Delinquent Case</fullName>
        <actions>
            <name>Delinquent_Account_Cancellation</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Delinquent Accounts</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Outcome__c</field>
            <operation>equals</operation>
            <value>Cancellation</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.IsClosed</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>License Request</fullName>
        <actions>
            <name>License_Request</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>License Request</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>License%2FBBB Case Closed</fullName>
        <actions>
            <name>License_BBB_Case_Closed</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.IsClosed</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>License Request,BBB</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Owner Change</fullName>
        <actions>
            <name>Case_assigned</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>ISCHANGED(OwnerId)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Vet Status</fullName>
        <actions>
            <name>Pre_Vet_Status</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Pre_Vet_Status__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Owned_by_Queue__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Project Case Closed</fullName>
        <actions>
            <name>Bulk_Project_Case_Closed</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.IsClosed</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Bulk Project</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>RSM David</fullName>
        <actions>
            <name>Update_Subject</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_to_David</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Mis-sold</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Seller_Role__c</field>
            <operation>equals</operation>
            <value>Notorious ZIPs,Zipline,Legion of Zips,GSD</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>RSM Jane</fullName>
        <actions>
            <name>Update_to_Jane</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Mis-sold</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Seller_Role__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>RSM Rod</fullName>
        <actions>
            <name>Upate_to_Rod</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Mis-sold</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Seller_Role__c</field>
            <operation>equals</operation>
            <value>Mavericks</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>RSM Steve</fullName>
        <actions>
            <name>Update_to_Steve</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Mis-sold</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Seller_Role__c</field>
            <operation>equals</operation>
            <value>Bell Hawks,TPC South Central,Wait List</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stamp Account Owner Role</fullName>
        <actions>
            <name>Stamp_Owner_Role_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Cancellation_Request_Reason__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Stamps the current account owner on the related case when the case is created.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Account Phone</fullName>
        <actions>
            <name>Update_Account_Phone</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISBLANK(Account_Phone__c) = TRUE</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update to Bulk Project Queue</fullName>
        <actions>
            <name>Update_to_Bulk_Project_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Bulk Project</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
