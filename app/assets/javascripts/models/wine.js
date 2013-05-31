WC.Models.Wine = Backbone.Model.extend({
  url: '/wines/',

  schema: {
    name: 'Text',
    country: 'Text',
    color: {type: 'Select', options: ['red', 'white', 'rose']},
    vintage: 'Number',
    quantity: 'Number'
  }
});