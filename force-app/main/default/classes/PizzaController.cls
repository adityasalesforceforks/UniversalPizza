/**
 * Created by brooks on 12/6/2020.
 */

public with sharing class PizzaController {

    public static Pizza getPizza(FranchiseType franchise, PizzaTypes type) {
        Franchise store = FranchiseService.getFranchise(franchise);
        return store.orderPizza(type);
    }
}