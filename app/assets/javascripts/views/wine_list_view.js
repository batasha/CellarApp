WC.Views.WineList = Backbone.View.extend({
  render: function() {
    var that = this;

    var renderedContent = JST['wines/index']({
      wines: that.collection
    });

    that.$el.html(renderedContent);
    return that;
  }
});