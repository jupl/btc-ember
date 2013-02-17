tasks =
  build:      require './tasks/build'
  add:        require './tasks/add'
  generate:   require './tasks/generate'
  destroy:    require './tasks/destroy'
  help:       require './tasks/help'
  test:       require './tasks/test'

tasks[key] = new value for key, value of tasks

module.exports =

  gen:
    model:
      command:      'gen:model'
      description:  'Generate an Ember model'
      task:         tasks.generate.model
    route:
      command:      'gen:route'
      description:  'Generate an Ember route'
      task:         tasks.generate.route
    controller:
      command:      'gen:controller'
      description:  'Generate an Ember object controller'
      task:         tasks.generate.controller
    arrayController:
      command:      'gen:controller:array'
      description:  'Generate an Ember array controller'
      task:         tasks.generate.arrayController
    view:
      command:      'gen:view'
      description:  'Generate an Ember view'
      task:         tasks.generate.view
    template:
      command:      'gen:template'
      description:  'Generate an Ember Handlebars template'
      task:         tasks.generate.template
    partial:
      command:      'gen:partial'
      description:  'Generate an Ember Handlebars partial template'
      task:         tasks.generate.partial
    test:
      command:      'gen:test'
      description:  'Generate a Mocha test file\n'
      task:         tasks.generate.test

  del:
    model:
      command:      'del:model'
      description:  'Delete an Ember model'
      task:         tasks.destroy.model
    route:
      command:      'del:route'
      description:  'Delete an Ember route'
      task:         tasks.destroy.route
    controller:
      command:      'del:controller'
      description:  'Delete an Ember object controller'
      task:         tasks.destroy.controller
    arrayController:
      command:      'del:controller:array'
      description:  'Delete an Ember array controller'
      task:         tasks.destroy.arrayController
    view:
      command:      'del:view'
      description:  'Delete an Ember view'
      task:         tasks.destroy.view
    template:
      command:      'del:template'
      description:  'Delete an Ember Handlebars template'
      task:         tasks.destroy.template
    partial:
      command:      'del:partial'
      description:  'Delete an Ember Handlebars partial template'
      task:         tasks.destroy.partial
    test:
      command:      'del:test'
      description:  'Generate a Mocha test file\n'
      task:         tasks.destroy.test

  build:
    once:
      dev:
        command:      'build:dev'
        description:  'Build project'
        task:         tasks.build.onceDev
      prod:
        command:      'build:prod'
        description:  'Build project minified'
        task:         tasks.build.onceProd
    watch:
      dev:
        command:      'watch:dev'
        description:  'Continuously rebuild project on changes'
        task:         tasks.build.watchDev
      prod:
        command:      'watch:prod'
        description:  'Continuously rebuild project minified on changes'
        task:         tasks.build.watchProd
    server:
      dev:
        command:      'server:dev'
        description:  'Continuously rebuild project on changes, and host locally'
        task:         tasks.build.serverDev
      prod:
        command:      'server:prod'
        description:  'Continuously rebuild project minified on changes, and host locally\n'
        task:         tasks.build.serverProd

  test:
    terminal:
      command:      'test'
      description:  'Run test tasks in terminal using jsdom\n'
      task:         tasks.test.terminal

  help:
    npm:
      command:      'help:npm'
      description:  'Help for those running commands from npm'
      task:         tasks.help.npm