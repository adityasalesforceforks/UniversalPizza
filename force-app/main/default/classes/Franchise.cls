/**
 * Created by brooks on 12/6/2020.
 */

public abstract class Franchise {

    abstract Pizza createPizza(PizzaTypes type);

    public Pizza orderPizza(PizzaTypes type) {
        Pizza pizza = createPizza(type);
        System.debug('Making a ' + type  + 'pizza');
        pizza.prepare();
        pizza.bake();
        pizza.cut();
        pizza.box();
        return pizza;
    }

    public with sharing class NewYork extends Franchise {

        public override Pizza createPizza(PizzaTypes type){
            switch on type{
                when CHEESE{
                    return new Pizza.NewYorkStyleCheese();
                }when SAUSAGE{
                    return new Pizza.NewYorkStyleSausage();
                }when PEPPERONI{
                    return new Pizza.NewYorkStylePepperoni();
                }
            }
            return null;
        }
    }
    public class Chicago extends Franchise {

        private override Pizza createPizza(PizzaTypes type) {
            switch on type{
                when CHEESE{
                    return new Pizza.ChicagoStyleCheesePizza();
                }when SAUSAGE{
                    return new Pizza.ChicagoStyleSausage();
                }when PEPPERONI{
                    return new Pizza.ChicagoStylePepperoni();
                }
            }
            return null;
        }

    }
}