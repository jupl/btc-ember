initialize = ->
  App.advanceReadiness()

if cordova
  document.addEventListener 'deviceready', initialize, false
else
  $ initialize