/**
 * Created by brooks on 12/13/2020.
 */

trigger Account on Account (before insert, before update, before delete,
        after insert, after update, after delete, after undelete) {

    TriggerHandler accountTriggerHandler = new AccountTriggerHandler();
    accountTriggerHandler.run();

}