/**
 * Created by brooks on 12/28/2020.
 */

import {LightningElement} from 'lwc';

export default class SimpleIteratorDemo extends LightningElement {
    franchise = [{
        Id: 1,
        Name: "Big Al's",
        Type: "New York",
    },
        {
            Id: 2,
            Name: "Big Tony's",
            Type : "Chicago",
        },
        {
            Id: 3,
            Name : "Loui's Pizza",
            Type : "New York",
        }
    ]

}