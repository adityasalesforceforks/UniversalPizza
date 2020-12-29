Webruntime.define('lwc/simpleIteratorDemo', ['lwc'], function (lwc) { 'use strict';

    function tmpl($api, $cmp, $slotset, $ctx) {
      return [];
    }

    var _tmpl = lwc.registerTemplate(tmpl);
    tmpl.stylesheets = [];
    tmpl.stylesheetTokens = {
      hostAttribute: "lwc-simpleIteratorDemo_simpleIteratorDemo-host",
      shadowAttribute: "lwc-simpleIteratorDemo_simpleIteratorDemo"
    };

    class SimpleIteratorDemo extends lwc.LightningElement {
      constructor(...args) {
        super(...args);
        this.franchise = [{
          Id: 1,
          Name: "Big Al's",
          Type: "New York"
        }, {
          Id: 2,
          Name: "Big Tony's",
          Type: "Chicago"
        }, {
          Id: 3,
          Name: "Loui's Pizza",
          Type: "New York"
        }];
      }

    }

    lwc.registerDecorators(SimpleIteratorDemo, {
      fields: ["franchise"]
    });

    var simpleIteratorDemo = lwc.registerComponent(SimpleIteratorDemo, {
      tmpl: _tmpl
    });

    return simpleIteratorDemo;

});
