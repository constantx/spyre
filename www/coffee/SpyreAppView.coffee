###jshint devel:true###
###global Backbone:true, $:true###

SpyreAppView = Backbone.View.extend

  el: $('#app-container')

  events:
    "push" : "is_pushed"
  
  initialize: ->
    self = @
    # init views
    barTabView = new window.BarTabView()

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

    @

  is_pushed: ->
    @