Scaffold = require '../../lib/scaffold'

module.exports = class ArrayController extends Scaffold

  promptString: ->
    super 'array controller (as singular, not plural)'