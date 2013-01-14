#
# * GET home page.
# 
exports.home = (req, res) ->
  res.render "home",
    title: "Spyre"

exports.stats = (req, res) ->
  res.render "stats",
    title: "Stats"

exports.settings = (req, res) ->
  res.render "settings",
    title: "Settings"

exports.signin = (req, res) ->
  res.render "signin",
    title: "Sign in"

exports.signup = (req, res) ->
  res.render "signup",
    title: "Spyre"

exports.craving = (req, res) ->
  res.render "craving",
    title: "craving"
exports.craving_smoke = (req, res) ->
  res.render "craving_smoke",
    title: "craving"
exports.craving_not_smoke = (req, res) ->
  res.render "craving_not_smoke",
    title: "craving"

exports.distraction = (req, res) ->
  res.render "distraction",
    title: "distraction"

exports.onboarding_1 = (req, res) ->
  res.render "onboarding",
    title: "Spyre"
    step: 1

exports.onboarding_2 = (req, res) ->
  res.render "onboarding",
    title: "Spyre"
    step: 2

exports.onboarding_3 = (req, res) ->
  res.render "onboarding",
    title: "Spyre"
    step: 3

exports.onboarding_4 = (req, res) ->
  res.render "onboarding",
    title: "Spyre"
    step: 4

exports.onboarding_5 = (req, res) ->
  res.render "onboarding",
    title: "Spyre"
    step: 5