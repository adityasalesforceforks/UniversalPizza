/**
 * Created by brooks on 12/6/2020.
 */

@IsTest
private class PizzaController_Test {
    @IsTest
    static void shouldReturnNYStylePizza() {
        //given
        Pizza pizza = null;

        //when
        Test.startTest();
        pizza = PizzaController.getPizza(FranchiseType.NEWYORK, PizzaTypes.CHEESE);
        Test.stopTest();

        System.assertEquals('New York Style Cheese Pizza', pizza.name, 'It should return a cheese pizza');
    }

    @IsTest
    static void shouldReturnChicagoStylePizza() {
        //given
        Pizza pizza = null;

        //when
        Test.startTest();
        pizza = PizzaController.getPizza(FranchiseType.CHICAGO, PizzaTypes.CHEESE);
        Test.stopTest();

        System.assertEquals('Chicago Style Deep Dish Cheese Pizza', pizza.name, 'It should return a cheese pizza');
    }
}