exports.config =
  paths:
    public: 'build/web'

  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
      order:
        before: [
          'app/app.coffee'
          'vendor/scripts/common/console-helper.js'
          'vendor/scripts/common/jquery.js'
          'vendor/scripts/ember/handlebars.js'
          'vendor/scripts/ember/ember.js'
          'vendor/scripts/ember/ember.prod.js'
        ]
        after: []

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app|vendor)/

    templates:
      joinTo: 'javascripts/app.js'
      paths:
        jquery: 'vendor/scripts/common/jquery.js'
        ember: 'vendor/scripts/ember/ember.js'
        handlebars: 'vendor/scripts/ember/handlebars.js'

  # If we are wrapping Ember modules, execute these pieces of code immediately
  #    in a wrapped function so they are added to the App namespace.
  modules:
    wrapper: (path, data, isVendor) ->
      path = path.replace(/\.\w+$/, '').replace(/^app\//, '')
      if isVendor
        code = "#{data};\n"
      else if path is 'app' or path is 'router' or path is 'view-helpers' \
          or /^(controllers|models|routes|templates|views)[\\/]/.test path
        code  = '(function() {\n'
        code += '  var module = {};\n' if /^templates/.test path
        code += """
          #{data.replace /(\\)?\n(?!\n)/g, ($0, $1) -> if $1 then $0 else '\n  '}
        })();\n\n
        """
      else
        code = """
        window.require.define({#{JSON.stringify path}: function(exports, require, module) {
          #{data.replace /(\\)?\n(?!\n)/g, ($0, $1) -> if $1 then $0 else '\n  '}
        }});\n\n
        """
      code

  # Ignore Ember template partials.
  conventions:
    ignored: (path) ->
      sysPath = require 'path'
      startsWith = (string, substring) ->
        string.indexOf(substring, 0) is 0
      if /^app[\\/]templates/.test path
        false
      else
        startsWith sysPath.basename(path), '_'