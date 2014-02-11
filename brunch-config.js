'use strict';

exports.config = {
  paths: {
    public: 'public'
  },

  server: {
    path: 'server',
    port: 3333
  },

  files: {
    javascripts: {
      joinTo: {
        'javascripts/app.js': /^app/,
        'javascripts/vendor.js': /^(vendor|bower_components)(?!.+ember(-data)?\.prod\.js$)/
      },
      order: {
        before: ['app/initialize.js']
      }
    },

    stylesheets: {
      joinTo: {
        'stylesheets/app.css': /^(app|vendor|bower_components)/
      }
    },

    templates: {
      joinTo: 'javascripts/app.js',
      paths: {
        jquery: 'bower_components/jquery/jquery.js',
        ember: 'bower_components/ember/ember.js',
        handlebars: 'bower_components/handlebars/handlebars.js'
      }
    }
  },

  overrides: {
    production: {
      files: {
        javascripts: {
          joinTo: {
            'javascripts/app.js': /^app/,
            'javascripts/vendor.js': /^(vendor|bower_components)(?!.+ember(-data)?(?!\.prod)\.js$)/
          },
          order: {
            before: ['app/initialize.js']
          }
        }
      }
    }
  },

  modules: {
    definition: false,
    wrapper: function(path, code) {
      if(/^app\//.test(path)) {
        code = '\n(function() {\n' + code + '\n})();';
      }
      return code;
    }
  }
};
