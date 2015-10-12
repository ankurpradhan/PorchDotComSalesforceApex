@isTest(SeeAllData=true)
public class Test_recycleLeadSchedule {
    static testmethod void test() {
        Test.startTest();
        recycleLeadSchedule a = new recycleLeadSchedule();
        Database.executeBatch(a);
        Test.stopTest();
    }
}