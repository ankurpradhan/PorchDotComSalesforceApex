@isTest(SeeAllData=true)
private class Test_deleteDialEntry {
    static testmethod void test() {
        Test.startTest();
        deleteDialEntry d = new deleteDialEntry();
        Database.executeBatch(d);
        Test.stopTest();
    }
}