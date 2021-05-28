/**
 * Created by brooks on 5/28/2021.
 */

public with sharing class PaymentStrategyFactory {

    public static IPayment getStrategy(String strategyName){
        switch on strategyName.toLowerCase(){
            when 'paypal'{
                return  new PayPal();
            }when 'debitcard'{
                return new DebitCard();
            }when 'creditcard'{
                return new CreditCard();
            }
        }
        return null;
    }
}