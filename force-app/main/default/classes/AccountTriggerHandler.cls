/**
 * Created by brooks on 12/13/2020.
 */

public with sharing class AccountTriggerHandler  extends TriggerHandler{

    protected override void beforeInsert() {
        System.debug('called before insert');
        FranchiseManagerSettings settings = new FranchiseManagerSettings(Trigger.new);
        settings.setRegionalFranchiseManager();
    }

    protected override void beforeUpdate() {
        System.debug('called before update');
        FranchiseManagerSettings settings = new FranchiseManagerSettings(Trigger.new);
        settings.setRegionalFranchiseManager();
    }

}