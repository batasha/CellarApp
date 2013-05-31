window.WC = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},

  initialize: function(rootEl, wineData) {
    var wines = new WC.Collections.Wines(wineData);

    new WC.Routers.WinesRouter(rootEl, wines);

    Backbone.history.start();
  }
};