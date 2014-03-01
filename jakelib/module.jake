'use strict';

// Tasks to add modules to the project that are not included by default.
// This is usually either Bower packages or NPM packages.
var fs = require('fs');

namespace('add', function() {
  desc('Add normalize.css');
  task('normalize', function() {
    editBower(function() {
      this.dependencies['normalize-css'] = '~3.0.0';
    });
  });

  desc('Add Ember Data (data persistence library)');
  task('data', function() {
    editBower(function() {
      this.dependencies['ember-data'] = '~1.0.0';
      this.overrides['ember-data'] = {
        main: [
          'ember-data.js',
          'ember-data.prod.js'
        ]
      };
    });
  });

  desc('Add Swag (Handlebar helpers)');
  task('swag', function() {
    editBower(function() {
      this.dependencies['swag'] = '~0.5.0';
    });
  });
});

namespace('rem', function() {
  desc('Remove normalize.css');
  task('normalize', function() {
    editBower(function() {
      delete this.dependencies['normalize-css'];
    });
  });

  desc('Remove Ember Data');
  task('data', function() {
    editBower(function() {
      delete this.dependencies['ember-data'];
      delete this.overrides['ember-data'];
    });
  });

  desc('Remove Swag');
  task('swag', function() {
    editBower(function() {
      delete this.dependencies['swag'];
    });
  });
});

function editBower(callback) {
  var json = JSON.parse(fs.readFileSync('bower.json'));
  callback.call(json);
  fs.writeFileSync('bower.json', JSON.stringify(json, null, 2) + '\n');
}
