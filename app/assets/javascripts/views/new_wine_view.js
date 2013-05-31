WC.Views.NewWine = Backbone.View.extend({
  events: {
    'click button.submit': 'submit'
  },

  render: function() {
    var that = this;

    that.$el.html(JST['wines/new']());
    that.wine = new WC.Models.Wine();
    that.form = new Backbone.Form({
      model: that.wine
    });

    that.$('.new-wine-form').append(that.form.render().el);
    return that;
  },

  submit: function() {
    var that = this;

    that.form.commit();
    that.wine.save({}, {success: function(model, response, options) {
      var url = "/wines/" + that.wine.get('id');
      Backbone.history.navigate(url, {trigger: true});
    }});
  }
});