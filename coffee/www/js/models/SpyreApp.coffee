###jslint devel:true ###
###global Backbone:true###
"use strict"

SpyreApp = Backbone.Model.extend
  defaults:
    location: {}

  initialize: ->
    @