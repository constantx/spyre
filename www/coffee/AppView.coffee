###global Backbone:true, $:true###

AppView = Backbone.View.extend

  el: $('#app-container')
  
  initialize: ->
    new window.FingerBlast(@el)