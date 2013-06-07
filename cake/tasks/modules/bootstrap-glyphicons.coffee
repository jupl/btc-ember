Module = require '../../lib/module'

module.exports = class BootstrapGlyphicons extends Module

  @add: ->
    FontAwesome = require './bootstrap-font-awesome'
    FontAwesome.remove =>
      super