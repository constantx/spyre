###global $:true, Backbone:true, _:true###

(->
  $(document).ready ->
    # init event watcher
    window.Ev = _.extend {}, Backbone.Events
    
    # main app model
    window.Spyre = new window.SpyreApp()

    # main app view
    appView = new window.AppView
      model: window.Spyre

    # simulate touch with click event
    fingerBlast = new window.FingerBlast(appView.el)
    @
)();