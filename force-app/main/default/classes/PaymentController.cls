/**
 * Created by brooks on 5/28/2021.
 */

public with sharing class PaymentController {

    @AuraEnabled
    public static Boolean submitPayment(String paymentType){
        ShoppingCart cart = new ShoppingCart(PaymentStrategyFactory.getStrategy(paymentType));
        return cart.submitPayment();
    }
}