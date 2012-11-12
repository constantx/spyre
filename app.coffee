
###
Module dependencies.
###
express = require("express")
routes = require("./routes")
http = require("http")
path = require("path")
app = express()

app.configure ->
  app.set "port", process.env.PORT or 3000
  app.set "views", __dirname + "/views"
  app.set "view engine", "jade"
  app.use express.favicon()
  app.use express.logger("dev")
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router
  app.use express.static(path.join(__dirname, "www"))

app.configure "development", ->
  app.use express.errorHandler()

app.get "/",                routes.signup
app.get "/home",            routes.home
app.get "/stats",           routes.stats
app.get "/settings",        routes.settings
app.get "/signup",          routes.signup
app.get "/signin",          routes.signin

app.get "/onboarding",      routes.onboarding_1
app.get "/onboarding/1",    routes.onboarding_1
app.get "/onboarding/2",    routes.onboarding_2
app.get "/onboarding/3",    routes.onboarding_3
app.get "/onboarding/4",    routes.onboarding_4
app.get "/onboarding/5",    routes.onboarding_5

http.createServer(app).listen app.get("port"), ->
  console.log "Express server listening on port " + app.get("port")
