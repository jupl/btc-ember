Scaffold = require '../../lib/scaffold'

module.exports = class ArrayController extends Scaffold

  promptString: ->
    super.replace(':', ' (as singular, not plural):')