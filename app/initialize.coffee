initialize = ->

  # Add FastClick if available
  new FastClick?(document.body)

  App.advanceReadiness()

if cordova?
  document.addEventListener 'deviceready', initialize, false
else
  $ initialize