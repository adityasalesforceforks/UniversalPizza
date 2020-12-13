/**
 * Created by brooks on 12/6/2020.
 */

public abstract class Pizza {
    @TestVisible
    protected String name;
    protected String dough;
    protected String sauce;
    protected List<String> toppings;

    public Pizza() {
        this.toppings = new List<String>();
    }

    public void prepare(){
        System.debug('Preparing a pizza of type ' + name);
    }

    public void bake(){
        System.debug('Baking ' + name);
    }

    public void cut(){
        System.debug('Cutting ' + name);
    }
    public void box(){
        System.debug('Boxing ' + name);
    }

    public void displayNameAndIngredients(){
        System.debug('This is a ' + this.name + ' Pizza.');
        System.debug('It\'s ingredients are');
        for (String topping : toppings){
            System.debug(String.valueOf(topping));
        }
    }

    public with sharing class NewYorkStyleSausage extends Pizza{

        public NewYorkStyleSausage(){
            this.name = 'New York Style Cheese Pizza';
            this.dough = 'Thin Crust';
            this.sauce = 'Marinara Sauce';

            this.toppings.add('mozzarella');
            this.toppings.add('garlic');
            this.toppings.add('mushrooms');
            this.toppings.add('sliced Italian Sausage');
        }

    }
    public with sharing class NewYorkStylePepperoni extends Pizza{

        public NewYorkStylePepperoni(){
            this.name = 'New York Style Cheese Pizza';
            this.dough = 'Thin Crust';
            this.sauce = 'Marinara Sauce';

            this.toppings.add('mozzarella');
            this.toppings.add('garlic');
            this.toppings.add('mushrooms');
            this.toppings.add('sliced pepperoni');

        }

    }

    public with sharing class NewYorkStyleCheese extends Pizza{

        public NewYorkStyleCheese(){
            this.name = 'New York Style Cheese Pizza';
            this.dough = 'Thin Crust';
            this.sauce = 'Marinara Sauce';
            this.toppings.add('Mozzarella cheese');
        }

    }

    public with sharing class ChicagoStylePepperoni extends Pizza{

        public ChicagoStylePepperoni() {
            this.name = 'Chicago Style Pepperoni Pizza';
            this.sauce = 'Plum tomato sauce';
            this.dough = 'Chicago Style Thick Crust';
            this.toppings.add('Shredded Mozzarella Cheese');
            this.toppings.add('Sliced Pepperoni');
        }
    }

    public class ChicagoStyleSausage extends Pizza{

        public ChicagoStyleSausage(){
            this.name = 'ChicagoStyleSausagePizza';
            this.dough = 'Chicago Style Thick Crust Dough';
            this.sauce = 'Plum Tomato Sauce';

            toppings.add('Sliced bratwurst');
            toppings.add('sliced kielbasa');
        }
    }

    public with sharing class ChicagoStyleCheesePizza extends Pizza{

        public ChicagoStyleCheesePizza() {
            this.name = 'Chicago Style Deep Dish Cheese Pizza';
            this.dough = 'Extra Thick Crust Dough';
            this.sauce = 'Plum Tomato Sauce';

            toppings.add('Shredded Mozzarella Cheese');
        }
    }
}