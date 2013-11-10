var setup = require('./setup');

exports.config = setup({
  modules: {
    definition: false,
    wrapper: function(path, code) {
      return ['(function() {', code, '})()'].join('\n');
    }
  },

  files: {
    javascripts: {
      joinTo: {
        'javascripts/app.js': /^app/,
        'javascripts/vendor.js': /^(vendor|bower_components)/
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
