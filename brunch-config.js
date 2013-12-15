var setup = require('./setup');

exports.config = setup({
  modules: {
    definition: false,
    wrapper: function(path, code) { // Wrap app code in closures
      if(/^app\//.test(path)) {
        code = '\n(function() {\n' + code + '\n})();';
      }
      return code;
    }
  },

  server: {
    path: 'server'
  },

  files: {
    javascripts: {
      joinTo: {
        'javascripts/app.js': /^app/,
        'javascripts/vendor.js': /^(vendor|bower_components)/
      },
      order: {
        before: ['app/app.js']
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
  }
});
