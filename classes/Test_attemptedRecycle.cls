@isTest(SeeAllData=True)
private class Test_attemptedRecycle {
    static testmethod void test() {
        Test.startTest();
        attemptedRecycle b = new attemptedRecycle();
        Database.executeBatch(b);
        Test.stopTest();
    }
}