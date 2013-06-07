Module = require '../../lib/module'

module.exports = class BootstrapFontAwesome extends Module

  @add: ->
    Glyphicons = require './bootstrap-glyphicons'
    Glyphicons.remove =>
      super