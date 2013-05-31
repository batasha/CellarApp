WC.Models.Wine = Backbone.RelationalModel.extend({
  url: '/wines/',

  schema: {
    name: 'Text',
    country: 'Text',
    color: {type: 'Select', options: ['red', 'white', 'rose']},
    vintage: 'Number',
    quantity: 'Number'
  },

  relations: [{
    type: 'HasMany',
    key: 'tasting_notes',
    relatedModel: 'WC.Models.TastingNote',
    collectionType: 'WC.Collections.TastingNotes',
    includeInJSON: false
  }]
});