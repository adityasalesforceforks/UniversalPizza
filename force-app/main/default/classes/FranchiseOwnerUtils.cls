/**
 * Created by brooks on 12/13/2020.
 */

public with sharing class FranchiseOwnerUtils {

    private static final String USER_ROLE = 'Regional_Franchise_Manager';
    private static FranchiseOwnerUtils utils {get; private set;}


   public Map<String, String> franchiseManagerByRegion {get; private set;}


    private FranchiseOwnerUtils(){
        System.debug('utils is being called in  ' + Trigger.operationType);
        this.franchiseManagerByRegion = new Map<String, String>();

        List<User> managers = [SELECT Id, Region__c
        FROM User
        WHERE UserRole.DeveloperName =: USER_ROLE];

        for (User u : managers){
            franchiseManagerByRegion.put(u.Region__c, u.Id);
        }
    }

    public static FranchiseOwnerUtils getInstance(){
        if (utils == null) {
            utils = new FranchiseOwnerUtils();
        }
        return utils;
    }


}