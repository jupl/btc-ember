{config} = require '../../config'
setMode = require '../build-mode'
setEnvironment = require '../build-environment'
setMode 'production', config
setEnvironment 'cordova', config
exports.config = config