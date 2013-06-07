Module = require '../../lib/module'

module.exports = class Bootstrap extends Module
  @JS:          require './bootstrap-js'
  @Responsive:  require './bootstrap-responsive'
  @Glyphicons:  require './bootstrap-glyphicons'
  @FontAwesome: require './bootstrap-font-awesome'

  # PoD :(
  @remove: ->
    @JS.remove =>
      @Responsive.remove =>
        @Glyphicons.remove =>
          @FontAwesome.remove =>
            super