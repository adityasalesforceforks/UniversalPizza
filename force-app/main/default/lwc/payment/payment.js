/**
 * Created by brooks on 5/28/2021.
 */

import {LightningElement} from 'lwc';
import submitPayment from '@salesforce/apex/PaymentController.submitPayment';

export default class Payment extends LightningElement {
    paymentOption;
    paymentResult;
    error;

    handleChange(event){
        this.paymentOption = event.target.value;
        console.log(this.paymentOption);
    }

    submit(){
        submitPayment({paymentType: this.paymentOption})
            .then(result => {
                this.paymentResult = result;
                alert(this.paymentResult);
            })
            .catch(error =>{
                this.error = error;
            })
    }
    get options(){
        return [
            {label: 'Debit Card', value: 'debitCard'},
            {label: 'Credit Card', value: 'creditCard'},
            {label: 'Pay Pal', value: 'paypal'},
        ]
    }
}