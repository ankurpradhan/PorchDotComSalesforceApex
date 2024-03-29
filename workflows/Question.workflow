<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>New_Question_Has_been_Asked</fullName>
        <description>New Question Has been Asked</description>
        <protected>false</protected>
        <recipients>
            <recipient>gregoryk@porch.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>heidib@porch.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>michaelmartin@porch.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/New_Question</template>
    </alerts>
    <fieldUpdates>
        <fullName>X01Rj0000000DrT3</fullName>
        <description>Priority</description>
        <field>Priority</field>
        <literalValue>high</literalValue>
        <name>chatter_answers_num_subscriptions_above_</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>New Question</fullName>
        <actions>
            <name>New_Question_Has_been_Asked</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Question.CreatedById</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>chatter_answers_no_best_reply_within_time_limit_wf</fullName>
        <active>false</active>
        <formula>NOT(ISPICKVAL(Priority,&apos;high&apos;)) &amp;&amp; ISBLANK(BestReplyId)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X01Rj0000000DrT3</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Question.CreatedDate</offsetFromField>
            <timeLength>24</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>chatter_answers_num_subscriptions_above_limit_wf</fullName>
        <actions>
            <name>X01Rj0000000DrT3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>NOT(ISPICKVAL(Priority,&apos;high&apos;)) &amp;&amp; ISBLANK(BestReplyId) &amp;&amp; NumSubscriptions &gt;= 20</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
