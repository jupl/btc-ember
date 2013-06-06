Scaffold = require '../../lib/scaffold'

module.exports = class TemplateHandlebars extends Scaffold

  promptString: ->
    super 'Handlebars template'