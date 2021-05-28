/**
 * Created by brooks on 5/28/2021.
 */

public with sharing class PayPal implements IPayment{


    public Boolean submitPayment() {
        System.debug('In the PayPal algo');
        return false;
    }
}