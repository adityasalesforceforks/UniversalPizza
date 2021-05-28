/**
 * Created by brooks on 5/28/2021.
 */

public with sharing class ShoppingCart {

    public IPayment paymentStrategy;

    public ShoppingCart(IPayment payment){
        this.paymentStrategy = payment;
    }

    public Boolean submitPayment(){
        return this.paymentStrategy.submitPayment();
    }
}