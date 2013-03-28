Build = require './tasks/build'
Help = require './tasks/help'
Scaffold =
  Model:            require './tasks/scaffolds/model'
  EmberDataModel:   require './tasks/scaffolds/ember-data-model'
  Template:         require './tasks/scaffolds/template'
  PartialTemplate:  require './tasks/scaffolds/partial-template'
  View:             require './tasks/scaffolds/view'
  Route:            require './tasks/scaffolds/route'
  ObjectController: require './tasks/scaffolds/object-controller'
  ArrayController:  require './tasks/scaffolds/array-controller'
  Style:            require './tasks/scaffolds/style'
  Test:             require './tasks/scaffolds/test'
Module =
  EmberData: require './tasks/modules/ember-data'

module.exports =
  
  add:
    bootstrap:
      command:      'add:bootstrap'
      description:  'Add Bootstrap with Font Awesome'
      task:         -> do Module.Bootstrap.add
    ember:
      data:
        command:      'add:ember:data'
        description:  'Add Ember Data\n'
        task:         -> do Module.EmberData.add

  rem:
    bootstrap:
      command:      'rem:bootstrap'
      description:  'Remove Bootstrap with Font Awesome'
      task:         -> do Module.Bootstrap.remove
    ember:
      data:
        command:      'rem:ember:data'
        description:  'Remove Ember Data\n'
        task:         -> do Module.EmberData.remove

  gen:
    model:
      command:      'gen:model:object'
      description:  'Generate an Ember class that represents a model'
      task:         -> do Scaffold.Model.generate
    emberDataModel:
      command:      'gen:model:ember'
      description:  'Generate an Ember Data model'
      task:         -> do Scaffold.EmberDataModel.generate
    template:
      command:      'gen:template'
      description:  'Generate an Ember template'
      task:         -> do Scaffold.Template.generate
    partialTemplate:
      command:      'gen:template:partial'
      description:  'Generate an Ember partial template'
      task:         -> do Scaffold.PartialTemplate.generate
    view:
      command:      'gen:view'
      description:  'Generate an Ember view'
      task:         -> do Scaffold.View.generate
    route:
      command:      'gen:route'
      description:  'Generate an Ember route'
      task:         -> do Scaffold.Route.generate
    controller:
      command:      'gen:controller'
      description:  'Generate an Ember object controller'
      task:         -> do Scaffold.ObjectController.generate
    arrayController:
      command:      'gen:controller:array'
      description:  'Generate an Ember array controller'
      task:         -> do Scaffold.ArrayController.generate
    style:
      command:      'gen:style'
      description:  'Generate a LESS stylesheet'
      task:         -> do Scaffold.Style.generate
    test:
      command:      'gen:test'
      description:  'Generate a Mocha test file\n'
      task:         -> do Scaffold.Test.generate

  del:
    model:
      command:      'del:model:object'
      description:  'Delete an Ember class that represents a model'
      task:         -> do Scaffold.Model.destroy
    emberDataModel:
      command:      'del:model:ember'
      description:  'Delete an Ember Data model'
      task:         -> do Scaffold.EmberDataModel.destroy
    template:
      command:      'del:template'
      description:  'Delete an Ember template'
      task:         -> do Scaffold.Template.destroy
    partialTemplate:
      command:      'del:template:partial'
      description:  'Delete an Ember partial template'
      task:         -> do Scaffold.PartialTemplate.destroy
    view:
      command:      'del:view'
      description:  'Delete an Ember view'
      task:         -> do Scaffold.View.destroy
    route:
      command:      'del:route'
      description:  'Delete an Ember route'
      task:         -> do Scaffold.Route.destroy
    controller:
      command:      'del:controller'
      description:  'Delete an Ember object controller'
      task:         -> do Scaffold.ObjectController.destroy
    arrayController:
      command:      'del:controller:array'
      description:  'Delete an Ember array controller'
      task:         -> do Scaffold.ArrayController.destroy
    style:
      command:      'del:style'
      description:  'Delete a LESS stylesheet'
      task:         -> do Scaffold.Style.generate
    test:
      command:      'del:test'
      description:  'Delete a Mocha test file\n'
      task:         -> do Scaffold.Test.generate

  build:
    once:
      dev:
        command:      'build:dev'
        description:  'Build project'
        task:         -> do Build.once.development
      prod:
        command:      'build:prod'
        description:  'Build project minified'
        task:         -> do Build.once.production
    watch:
      dev:
        command:      'watch:dev'
        description:  'Continuously rebuild project on changes'
        task:         -> do Build.watch.development
      prod:
        command:      'watch:prod'
        description:  'Continuously rebuild project minified on changes'
        task:         -> do Build.watch.production
    server:
      dev:
        command:      'server:dev'
        description:  'Continuously rebuild project on changes, and host locally'
        task:         -> do Build.server.development
      prod:
        command:      'server:prod'
        description:  'Continuously rebuild project minified on changes, and host locally\n'
        task:         -> do Build.server.production

  help:
    npm:
      command:      'help:npm'
      description:  'Help for those running commands from npm\n'
      task:         -> do Help.npm