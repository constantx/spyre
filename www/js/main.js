// Generated by CoffeeScript 1.4.0
(function() {

  $(document).ready(function() {
    var fingerBlast;
    window.Ev = _.extend({}, Backbone.Events);
    window.Spyre = {};
    window.Spyre.E = _.extend({}, Backbone.Events);
    window.Spyre.App = new window.SpyreApp();
    window.Spyre.AppView = new window.SpyreAppView({
      model: window.Spyre.App
    });
    fingerBlast = new window.FingerBlast(window.Spyre.AppView.el);
    window.Spyre.E.on('push', function() {
      return window.Spyre.AppView.$el.trigger('push');
    });
    window.addEventListener('push', function() {
      return window.Spyre.E.trigger('push');
    });
    return this;
  });

}).call(this);
