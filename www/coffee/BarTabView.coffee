###global Backbone:true, $:true###

BarTabView = Backbone.View.extend

  el: $('.bar-tab')

  events:
    'click' : "update"
  
  initialize: ->
    @

  update: ->