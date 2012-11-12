###global $:true###

(->
  $(document).ready ->
    window.Spyre = {}
    
    window.Spyre.View = new window.AppView()
)();