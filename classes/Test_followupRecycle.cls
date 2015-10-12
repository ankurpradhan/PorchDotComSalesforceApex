@isTest(SeeAllData=true)
private class Test_followupRecycle {
    static testmethod void test() {
        Test.startTest();
        followupRecycle b = new followupRecycle();
        Database.executeBatch(b);
        Test.stopTest();
    }
}