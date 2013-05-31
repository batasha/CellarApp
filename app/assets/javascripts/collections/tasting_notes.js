WC.Collections.TastingNotes = Backbone.Collection.extend({
  model: WC.Models.TastingNote,
  url: 'wines/:id/tasting_notes'
});