  $(document).ready ->
  # init event watcher
  window.Ev = _.extend {}, Backbone.Events
  
  window.Spyre = {}

  # main app model
  window.Spyre.App = new window.SpyreApp()

  # main app view
  window.Spyre.AppView = new window.SpyreAppView
    model: window.Spyre.App

  # simulate touch with click event
  fingerBlast = new window.FingerBlast(window.Spyre.AppView.el)
  
  window.addEventListener 'push', (e) ->
    window.Spyre.AppView.$el.trigger('push')

  @