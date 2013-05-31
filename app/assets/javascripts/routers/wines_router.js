WC.Routers.WinesRouter = Backbone.Routers.extend({
  initialize: function(rootEl, wines) {
    this.$rootEl = rootEl;
    this.wines = wines;
  }
})