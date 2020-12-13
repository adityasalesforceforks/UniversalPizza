/**
 * Created by brooks on 12/13/2020.
 */

@IsTest
private class FranchiseOwnerUtils_Test {

    @TestSetup
    static void setup(){
        Account oldAcc = new Account();
        oldAcc.Name = 'Susans Midwestern Pizza';
        oldAcc.Region__c = 'MidWest';
        insert oldAcc;
    }
    @IsTest
    static void setManager() {

        Account oldAcc = [SELECT Id, Region__c from Account LIMIT 1];

        Account newAcc = new Account();
        newAcc.Name = 'Joes New England Pizza';
        newAcc.Region__c = String.valueOf('New England');

        List<Account> accountsToUpsert = new List<Account>{newAcc, oldAcc};

        Test.startTest();
        upsert accountsToUpsert;
        Test.stopTest();
    }
}