Build = require './tasks/build'
Help = require './tasks/help'
Cordova = require './tasks/cordova'
Scaffold =
  Model:            require './tasks/scaffolds/model'
  EmberDataModel:   require './tasks/scaffolds/ember-data-model'
  Template:         require './tasks/scaffolds/template'
  PartialTemplate:  require './tasks/scaffolds/partial-template'
  View:             require './tasks/scaffolds/view'
  Route:            require './tasks/scaffolds/route'
  Controller:       require './tasks/scaffolds/controller'
  ObjectController: require './tasks/scaffolds/object-controller'
  ArrayController:  require './tasks/scaffolds/array-controller'
  Style:            require './tasks/scaffolds/style'
  Test:             require './tasks/scaffolds/test'
Module =
  Bootstrap: require './tasks/modules/bootstrap'
  EmberData: require './tasks/modules/ember-data'
  Fastclick: require './tasks/modules/fastclick'

module.exports =
  
  add:
    bootstrap:
      command:      'add:bootstrap'
      description:  'Add Bootstrap with Font Awesome'
      task:         -> do Module.Bootstrap.add
    ember:
      data:
        command:      'add:ember:data'
        description:  'Add Ember Data'
        task:         -> do Module.EmberData.add
    fastclick:
      command:      'add:fastclick'
      description:  'Add FastClick\n'
      task:         -> do Module.Fastclick.add

  rem:
    bootstrap:
      command:      'rem:bootstrap'
      description:  'Remove Bootstrap with Font Awesome'
      task:         -> do Module.Bootstrap.remove
    ember:
      data:
        command:      'rem:ember:data'
        description:  'Remove Ember Data'
        task:         -> do Module.EmberData.remove
    fastclick:
      command:      'rem:fastclick'
      description:  'Remove FastClick\n'
      task:         -> do Module.Fastclick.remove

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

  cordova:
    init:
      command:      'cordova:init'
      description:  'Create a new Cordova project'
      task:         -> do Cordova.initialize
    add:
      android:
        command:      'cordova:add:android'
        description:  'Add Android platform support to the Cordova project'
        task:         -> do Cordova.add.android
      ios:
        command:      'cordova:add:ios'
        description:  'Add iOS platform support to the Cordova project'
        task:         -> do Cordova.add.ios
    remove:
      android:
        command:      'cordova:rem:android'
        description:  'Remove Android platform support from the Cordova project'
        task:         -> do Cordova.remove.android
      ios:
        command:      'cordova:rem:ios'
        description:  'Remove iOS platform support from the Cordova project\n'
        task:         -> do Cordova.remove.ios

  build:
    android:
      dev:
        command:      'build:android:dev'
        description:  'Build project once for Android and deploy to a connected device'
        task:         -> do Build.once.android.development
      prod:
        command:      'build:android:prod'
        description:  'Build project once for Android minified and deploy to a connected device'
        task:         -> do Build.once.android.production
    ios:
      dev:
        command:      'build:ios:dev'
        description:  'Build project once for iOS and deploy to a connected device'
        task:         -> do Build.once.ios.development
      prod:
        command:      'build:ios:prod'
        description:  'Build project once for iOS minified and deploy to a connected device'
        task:         -> do Build.once.ios.production
    web:
      dev:
        command:      'build:web:dev'
        description:  'Build project once for web'
        task:         -> do Build.once.web.development
      prod:
        command:      'build:web:prod'
        description:  'Build project once for web minified\n'
        task:         -> do Build.once.web.production

  watch:
    cordova:
      dev:
        command:      'watch:cordova:dev'
        description:  'Continuously build on changes for Cordova'
        task:         -> do Build.watch.cordova.development
      prod:
        command:      'watch:cordova:prod'
        description:  'Continuously build on changes for Cordova minified'
        task:         -> do Build.watch.cordova.production
    web:
      dev:
        command:      'watch:web:dev'
        description:  'Continuously build on changes for web'
        task:         -> do Build.watch.web.development
      prod:
        command:      'watch:web:prod'
        description:  'Continuously build on changes for web minified\n'
        task:         -> do Build.watch.web.production

  server:
    dev:
      command:      'server:dev'
      description:  'Continuously build on changes for web and host locally'
      task:         -> do Build.server.web.development
    prod:
      command:      'server:prod'
      description:  'Continuously build on changes for web minified and host locally\n'
      task:         -> do Build.server.web.production

  emulate:
    android:
      dev:
        command:      'emulate:android:dev'
        description:  'Build project once for Android'
        task:         -> do Build.emulate.android.development
      prod:
        command:      'emulate:android:prod'
        description:  'Build project once for Android minified'
        task:         -> do Build.emulate.android.production
    ios:
      dev:
        command:      'emulate:ios:dev'
        description:  'Build project once for iOS'
        task:         -> do Build.emulate.ios.development
      prod:
        command:      'emulate:ios:prod'
        description:  'Build project once for iOS minified\n'
        task:         -> do Build.emulate.ios.production

  help:
    npm:
      command:      'help:npm'
      description:  'Help for those running commands from npm\n'
      task:         -> do Help.npm
