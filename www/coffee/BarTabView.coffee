###global Backbone:true, $:true###
###jshint devel:true###

BarTabView = Backbone.View.extend

  el: $('.bar-tab')

  events:
    'touch .tab-item' : "activate"

  initialize: ->
    @

  activate: ->
    @