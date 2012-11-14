###jshint devel:true ###
###global Backbone:true, $:true###

AppView = Backbone.View.extend

  el: $('#app-container')
  
  initialize: ->
    # init views
    barTabView = new window.BarTabView()

    # get ratchet's push.js callback
    window.addEventListener 'push', @pushedTo

    # get location and store in model
    @getLocation()

    @
  
  getLocation: ->
    self = @

    # get location
    gotLocation = (position) ->
      self.model.set 'loc', position
    
    noLocation = (msg) ->
      window.alert msg

    # console.log(arguments);
    if navigator && navigator.geolocation
      navigator.geolocation.getCurrentPosition gotLocation, noLocation
    else
      noLocation "not supported"

  pushedTo: =>
    console.log @.model
    @