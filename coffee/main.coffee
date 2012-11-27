  $(document).ready ->
  # init event watcher
  window.Ev = _.extend {}, Backbone.Events
  
  window.Spyre = {}

  window.Spyre.E = _.extend({}, Backbone.Events)
  
  # main app model
  window.Spyre.App = new window.SpyreApp()

  # main app view
  window.Spyre.AppView = new window.SpyreAppView
    model: window.Spyre.App

  # simulate touch with click event
  fingerBlast = new window.FingerBlast(window.Spyre.AppView.el)
  
  # subscribe a global push event to push.js callback
  window.addEventListener 'push', (e) ->
    window.Spyre.E.trigger 'push'
  
  # APP PUB/SUB
  window.Spyre.E.on 'push', (e) ->
    window.Spyre.AppView.$el.trigger('push')

  @