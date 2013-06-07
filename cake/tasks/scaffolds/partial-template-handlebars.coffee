Scaffold = require '../../lib/scaffold'

module.exports = class PartialTemplateHandlebars extends Scaffold

  promptString: ->
    super 'Handlebars partial template'