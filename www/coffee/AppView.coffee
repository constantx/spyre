###global Backbone:true, $:true, Q:true###

AppView = Backbone.View.extend

  el: $('#app-container')
  
  initialize: ->
    fingerBlast = new window.FingerBlast(@el)

    $(document).on 'click', "a.button-back", (e) ->
      e.preventDefault()
      window.console.log('hello')