#
# * GET home page.
# 
exports.home = (req, res) ->
  res.render "home",
    title: "Spyre"

exports.stats = (req, res) ->
  res.render "stats",
    title: "Spyre"

exports.settings = (req, res) ->
  res.render "settings",
    title: "Spyre"

exports.signin = (req, res) ->
  res.render "signin",
    title: "signin"

exports.signup = (req, res) ->
  res.render "signup",
    title: "Spyre"

exports.craving = (req, res) ->
  res.render "craving",
    title: "Spyre"
exports.craving_smoke = (req, res) ->
  res.render "craving_smoke",
    title: "Spyre"
exports.craving_not_smoke = (req, res) ->
  res.render "craving_not_smoke",
    title: "Spyre"

exports.distraction = (req, res) ->
  res.render "distraction",
    title: "Spyre"

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