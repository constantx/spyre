###global $:true, Backbone:true, _:true###

(->
  $(document).ready ->
    window.Spyre = {}
    window.Ev = _.extend({},Backbone.Events)

    appView = new window.AppView()
    tabBarView = new window.BarTabView()

    @
)();