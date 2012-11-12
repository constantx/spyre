#
# * GET home page.
# 
exports.home = (req, res) ->
  res.render "home",
    title: "Spyre"

exports.signin = (req, res) ->
  res.render "signin",
    title: "Spyre"

exports.signup = (req, res) ->
  res.render "signup",
    title: "Spyre"

exports.onboarding = (req, res) ->
  res.render "onboarding",
    title: "Spyre"
