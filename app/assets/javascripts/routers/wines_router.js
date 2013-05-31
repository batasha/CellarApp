WC.Routers.WinesRouter = Backbone.Router.extend({
  initialize: function(rootEl, wines) {
    this.$rootEl = $(rootEl);
    this.wines = wines;
  },

  routes: {
    '': 'index',
    'wines/new': 'new',
    'wines/:id': 'show',
  },

  new: function() {
    var that = this;

    newWine = new WC.Views.NewWine();

    that.$rootEl.html(newWine.render().$el);
  },

  index: function() {
    var that = this;

    newWineList = new WC.Views.WineList({
      collection: this.wines
    });

    that.$rootEl.html(newWineList.render().$el);
  }
})