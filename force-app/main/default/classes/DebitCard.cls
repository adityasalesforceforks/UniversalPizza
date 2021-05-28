/**
 * Created by brooks on 5/28/2021.
 */

public with sharing class DebitCard implements IPayment{


    public Boolean submitPayment() {
        System.debug('calling the Debit algo');
        return true;
    }
}