###jslint devel:true ###
###global Backbone:true###

SpyreApp = Backbone.Model.extend
  defaults:
    location: {}

  initialize: ->
    @