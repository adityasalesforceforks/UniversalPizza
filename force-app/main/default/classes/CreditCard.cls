/**
 * Created by brooks on 5/28/2021.
 */

public with sharing class CreditCard implements IPayment{


    public Boolean submitPayment() {
        System.debug('In the credit card algo');
        return true;
    }
}