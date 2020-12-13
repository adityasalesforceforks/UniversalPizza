/**
 * Created by brooks on 12/6/2020.
 */

public with sharing class FranchiseService {

    public static Franchise getFranchise(FranchiseType type){
        switch on type{
            when NEWYORK{
                return new Franchise.NewYork();
            }
            when CHICAGO{
                return new Franchise.Chicago();
            }
        }
        return null;
    }

}