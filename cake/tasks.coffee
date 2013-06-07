Build = require './tasks/build'
Help = require './tasks/help'
Scaffold =
  Model:                     require './tasks/scaffolds/model'
  EmberDataModel:            require './tasks/scaffolds/ember-data-model'
  TemplateHandlebars:        require './tasks/scaffolds/template-handlebars'
  TemplateEmblem:            require './tasks/scaffolds/template-emblem'
  PartialTemplateHandlebars: require './tasks/scaffolds/partial-template-handlebars'
  PartialTemplateEmblem:     require './tasks/scaffolds/partial-template-emblem'
  View:                      require './tasks/scaffolds/view'
  Route:                     require './tasks/scaffolds/route'
  Controller:                require './tasks/scaffolds/controller'
  ObjectController:          require './tasks/scaffolds/object-controller'
  ArrayController:           require './tasks/scaffolds/array-controller'
  Style:                     require './tasks/scaffolds/style'
  Test:                      require './tasks/scaffolds/test'
Module =
  Bootstrap: require './tasks/modules/bootstrap'
  EmberData: require './tasks/modules/ember-data'

module.exports =
  
  add:
    bootstrap:
      core:
        command:      'add:bootstrap'
        description:  'Add Bootstrap with FontAwesome'
        task:         -> Module.Bootstrap.add -> do Module.Bootstrap.FontAwesome.add
      js:
        command:      'add:bootstrap:js'
        description:  'Add Bootstrap JavaScript'
        task:         -> do Module.Bootstrap.JS.add
      responsive:
        command:      'add:bootstrap:responsive'
        description:  'Add Bootstrap responsive'
        task:         -> do Module.Bootstrap.Responsive.add
      glyphicons:
        command:      'add:bootstrap:glyph'
        description:  'Add Bootstrap glyphicons (removes FontAwesome)'
        task:         -> do Module.Bootstrap.Glyphicons.add
      fontAwesome:
        command:      'add:bootstrap:awesome'
        description:  'Add FontAwesome into Bootstrap (removes Glyphicons)'
        task:         -> do Module.Bootstrap.FontAwesome.add
    ember:
      data:
        command:      'add:ember:data'
        description:  'Add Ember Data\n'
        task:         -> do Module.EmberData.add

  rem:
    bootstrap:
      all:
        command:      'rem:bootstrap'
        description:  'Remove Bootstrap and any of the above Bootstrap-related'
        task:         -> do Module.Bootstrap.remove
      js:
        command:      'rem:bootstrap:js'
        description:  'Remove Bootstrap JavaScript'
        task:         -> do Module.Bootstrap.JS.remove
      responsive:
        command:      'rem:bootstrap:responsive'
        description:  'Remove Bootstrap responsive'
        task:         -> do Module.Bootstrap.Responsive.remove
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
      handlebars:
        command:      'gen:template:hbs'
        description:  'Generate an Ember Handlebars template'
        task:         -> do Scaffold.TemplateHandlebars.generate
      emblem:
        command:      'gen:template:emblem'
        description:  'Generate an Emblem template'
        task:         -> do Scaffold.TemplateEmblem.generate
      partial:
        handlebars:
          command:      'gen:template:partial:hbs'
          description:  'Generate an Ember Handlebars partial template'
          task:         -> do Scaffold.PartialTemplateHandlebars.generate
        emblem:
          command:      'gen:template:partial:emblem'
          description:  'Generate an Emblem partial template'
          task:         -> do Scaffold.PartialTemplateEmblem.generate
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
      description:  'Generate an Ember controller'
      task:         -> do Scaffold.Controller.generate
    objectController:
      command:      'gen:controller:object'
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
      handlebars:
        command:      'del:template:hbs'
        description:  'Delete an Ember Handlebars template'
        task:         -> do Scaffold.TemplateHandlebars.destroy
      emblem:
        command:      'del:template:emblem'
        description:  'Delete an Emblem template'
        task:         -> do Scaffold.TemplateEmblem.destroy
      partial:
        handlebars:
          command:      'del:template:partial:hbs'
          description:  'Delete an Ember Handlebars partial template'
          task:         -> do Scaffold.PartialTemplateHandlebars.destroy
        emblem:
          command:      'del:template:partial:emblem'
          description:  'Delete an Emblem partial template'
          task:         -> do Scaffold.PartialTemplateEmblem.destroy
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
      description:  'Delete an Ember controller'
      task:         -> do Scaffold.Controller.destroy
    objectController:
      command:      'del:controller:object'
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
        task:         -> do Build.once.web.development
      prod:
        command:      'build:prod'
        description:  'Build project minified'
        task:         -> do Build.once.web.production
    watch:
      dev:
        command:      'watch:dev'
        description:  'Continuously rebuild project on changes'
        task:         -> do Build.watch.web.development
      prod:
        command:      'watch:prod'
        description:  'Continuously rebuild project minified on changes'
        task:         -> do Build.watch.web.production
    server:
      dev:
        command:      'server:dev'
        description:  'Continuously rebuild project on changes, and host locally'
        task:         -> do Build.server.web.development
      prod:
        command:      'server:prod'
        description:  'Continuously rebuild project minified on changes, and host locally\n'
        task:         -> do Build.server.web.production

  help:
    npm:
      command:      'help:npm'
      description:  'Help for those running commands from npm\n'
      task:         -> do Help.npm