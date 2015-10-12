<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Failing_BBB_Rating</fullName>
        <ccEmails>daniele@porch.com</ccEmails>
        <description>Failing BBB Rating</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <recipient>heidib@porch.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Notifications_Cases/Failing_BBB_Rating</template>
    </alerts>
    <fieldUpdates>
        <fullName>Acquisition_Rep_Date</fullName>
        <field>Completed_Pro_Date__c</field>
        <formula>NOW()</formula>
        <name>Acquisition Rep Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Cancel_Date_Stamp</fullName>
        <field>Cancellation_Request_Date__c</field>
        <formula>TODAY()</formula>
        <name>Cancel Date Stamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Fulfillment_Date_Stamp</fullName>
        <field>Fulfillment_Status_Date__c</field>
        <formula>TODAY()</formula>
        <name>Fulfillment Date Stamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Not_Int_Date_Stamp</fullName>
        <field>Not_Interested_Fulfillment_Date__c</field>
        <formula>TODAY()</formula>
        <name>Not Int Date Stamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Remove_Leading_1_From_Phone_Number</fullName>
        <description>Removes the leading &apos;1&apos; from a phone number if the phone has an 11 digit number</description>
        <field>Phone</field>
        <formula>RIGHT(Phone,10)</formula>
        <name>Remove Leading 1 From Phone Number</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Smart_Account_Date</fullName>
        <field>Smart_Account_Date__c</field>
        <formula>TODAY()</formula>
        <name>Smart Account Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_Trial_Date</fullName>
        <field>Begin_Trial_Date__c</field>
        <formula>TODAY()</formula>
        <name>Stamp Trial Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Accounts_Status</fullName>
        <field>Account_Status__c</field>
        <literalValue>Basic Pro</literalValue>
        <name>Update Accounts Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Distributed_date_c</fullName>
        <field>Distributed_Date__c</field>
        <formula>now()</formula>
        <name>Update Distributed_date__c</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Premium_Status</fullName>
        <field>Premium_Status__c</field>
        <literalValue>Cancelled</literalValue>
        <name>Update Premium Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Warm_Pass_Date_Account</fullName>
        <field>Warm_Pass_Date__c</field>
        <formula>NOW()</formula>
        <name>Warm Pass Date Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Acquisition Rep Date</fullName>
        <actions>
            <name>Acquisition_Rep_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Acquisition_Rep__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Populate Acquisition Rep Pass date with today&apos;s date</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BBB Rating is Failing</fullName>
        <actions>
            <name>Failing_BBB_Rating</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.BBB_Rating__c</field>
            <operation>equals</operation>
            <value>D+,D,D-,F</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Account_Status__c</field>
            <operation>equals</operation>
            <value>Paid Pro</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Fulfillment Begin Trial Date</fullName>
        <actions>
            <name>Stamp_Trial_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ispickval(Fulfillment_Status__c,&apos;Trial&apos;) = TRUE</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Fulfillment Cancel Status Date Stamp</fullName>
        <actions>
            <name>Not_Int_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ispickval(Fulfillment_Status__c,&apos;Cancellation&apos;) = TRUE</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Fulfillment Status Date Stamp</fullName>
        <actions>
            <name>Fulfillment_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ispickval(Fulfillment_Status__c,&apos;Fulfillment Pro&apos;) = TRUE</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead %271%27 Phone Removal</fullName>
        <actions>
            <name>Remove_Leading_1_From_Phone_Number</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow removes the leading 1 on 11-digit phone numbers.</description>
        <formula>IF(AND(LEN(Phone) == 11, left(Phone,1) == text(1))
,TRUE
,FALSE
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Cancellation Request</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Cancellation_Request_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Distributed Date</fullName>
        <actions>
            <name>Update_Distributed_date_c</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(
    ISCHANGED(OwnerId),
    ISBLANK (Distributed_Date__c),
(NOT (ISBLANK( Claimed_Date__c))
)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Smart Account Date</fullName>
        <actions>
            <name>Smart_Account_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Account_Tag__c</field>
            <operation>equals</operation>
            <value>Smart Account</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Status and Premium Status</fullName>
        <actions>
            <name>Update_Accounts_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Premium_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Date_Cancelled__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Account_Status__c</field>
            <operation>notEqual</operation>
            <value>Verified</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Warm Pass Date Account</fullName>
        <actions>
            <name>Warm_Pass_Date_Account</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Warm_Pass_by__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Welcome Call Assignment</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Claimed_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Workflow rule that triggers welcome call round robin assignment</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
