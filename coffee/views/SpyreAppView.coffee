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
    @.getLocation()

    @
  
  getLocation: ->
    self = @

    # get location
    gotLocation = (geo) ->
      self.model.set 'geo', geo
    
    noLocation = (msg) ->
      

    if navigator && navigator.geolocation
      navigator.geolocation.getCurrentPosition gotLocation, noLocation
    else
      noLocation "not supported"

    @

  is_pushed: ->
    if window.location.pathname.match('/stats')
      @buildMap()

    @

  buildMap: ->
    geo = @.model.get('geo')
    
    if geo && geo.coords && geo.coords.latitude
      pos = geo.coords

      map = L.map('map').setView([pos.latitude, pos.longitude], 14)
      L.tileLayer('http://{s}.tile.cloudmade.com/{key}/{styleId}/256/{z}/{x}/{y}.png',
        key: '21c7e179d9f542658c51686febf6ae90'
        styleId: 79170
        maxZoom: 18
      ).addTo(map)

    @