/**
 * Created by brooks on 12/28/2020.
 */

import {LightningElement} from 'lwc';

export default class SimpleCalculatorDemo extends LightningElement {
    numberOne;
    numberTwo;
    result;

    handleChange(event){
        console.log(event.target.name)
        event.target.name === "input1" ? this.numberOne = event.target.value :
            this.numberTwo = event.target.value;
    }

    handleAdd(event){
        this.result = parseInt(this.numberOne) + parseInt(this.numberTwo);
    };

    handleSubtraction(event){
        this.result = parseInt(this.numberOne) - parseInt(this.numberTwo);
    };

    handleMultiplication(event){
        this.result = parseInt(this.numberOne) * parseInt(this.numberTwo);
    };

    handleDivision(event){
        this.result = parseInt(this.numberOne) / parseInt(this.numberTwo);
    }
}