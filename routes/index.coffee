#
# * GET home page.
# 
exports.home = (req, res) ->
  res.render "home",
    title: "Spyre"

exports.stats = (req, res) ->
  res.render "stats",
    title: "stats"

exports.settings = (req, res) ->
  res.render "settings",
    title: "settings"

exports.signin = (req, res) ->
  res.render "signin",
    title: "signin"

exports.signup = (req, res) ->
  res.render "signup",
    title: "spyre"

exports.craving = (req, res) ->
  res.render "craving",
    title: "craving"
exports.craving_smoke = (req, res) ->
  res.render "craving_smoke",
    title: "spyre"
exports.craving_not_smoke = (req, res) ->
  res.render "craving_not_smoke",
    title: "spyre"

exports.distraction = (req, res) ->
  res.render "distraction",
    title: "spyre"

exports.onboarding_1 = (req, res) ->
  res.render "onboarding",
    title: "spyre"
    step: 1

exports.onboarding_2 = (req, res) ->
  res.render "onboarding",
    title: "spyre"
    step: 2

exports.onboarding_3 = (req, res) ->
  res.render "onboarding",
    title: "spyre"
    step: 3

exports.onboarding_4 = (req, res) ->
  res.render "onboarding",
    title: "spyre"
    step: 4

exports.onboarding_5 = (req, res) ->
  res.render "onboarding",
    title: "spyre"
    step: 5