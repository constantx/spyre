###global Backbone:true, $:true, _:true###
###jshint devel:true###

(->
  $(document).ready ->
  # init event watcher
  window.Ev = _.extend {}, Backbone.Events
  
  # main app model
  window.Spyre = new window.SpyreApp()

  # main app view
  window.SpyreView = new window.SpyreAppView
    model: window.Spyre

  # simulate touch with click event
  fingerBlast = new window.FingerBlast(window.SpyreView.el)
  
  window.addEventListener 'push', ->
    window.SpyreView.trigger('push')

  @
)();