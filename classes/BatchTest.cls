@isTest(SeeAllData=True)
public class BatchTest {
    static testmethod void test() {
        Test.startTest();
        recycleLeadSchedule c = new recycleLeadSchedule();
        Database.executeBatch(c, 500);
        Test.stopTest();
    }
}