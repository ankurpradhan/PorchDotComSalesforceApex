@isTest(SeeAllData=true)
public class Test_openRecycle {
    static testmethod void test() {
        Test.startTest();
        openRecycle a = new openRecycle();
        Database.executeBatch(a);
        Test.stopTest();
    }
}