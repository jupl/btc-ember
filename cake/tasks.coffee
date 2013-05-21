Build = require './tasks/build'
Help = require './tasks/help'
Module = 
  Bootstrap: require './tasks/modules/bootstrap'

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
        description:  'Add FontAwesome into Bootstrap (removes Glyphicons)\n'
        task:         -> do Module.Bootstrap.FontAwesome.add

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
        description:  'Remove Bootstrap responsive\n'
        task:         -> do Module.Bootstrap.Responsive.remove

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