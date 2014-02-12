'use strict';

// Tasks to add modules to the project that are not included by default.
// This is usually either Bower packages or NPM packages.
var fs = require('fs');
var npm = require('./lib').bin('npm');

namespace('add', function() {
  desc('Add testing modules');
  task('testing', function() {
    editPackage(function() {
      this.devDependencies['karma-chai-plugins'] = '~0.2.0';
      this.devDependencies['karma-detect-browsers'] = '~0.1.2';
      this.devDependencies['karma-mocha'] = '~0.1.1';
      this.devDependencies['chai'] = '~1.9.0';
      this.devDependencies['mocha'] = '~1.17.1';
      this.devDependencies['mocha-as-promised'] = '~2.0.0';
      this.devDependencies['nodemon'] = '~1.0.14';
      this.devDependencies['phantomjs'] = '~1.9.2';
      this.devDependencies['selenium-webdriver'] = '~2.39.0';
    });
    return npm.execute('install');
  });

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

  desc('Add FastClick (remove click delay in mobile)');
  task('fastclick', function() {
    editBower(function() {
      this.dependencies.fastclick = '~0.6.10';
    });
  });

  desc('Add Hammer.js (touch library)');
  task('hammer', function() {
    editBower(function() {
      this.dependencies.hammerjs = '~1.0.5';
      this.overrides.hammerjs = {
        main: 'dist/hammer.js'
      };
    });
  });

  desc('Add Hammer.js (see above) as a jQuery plugin');
  task('hammerjquery', function() {
    editBower(function() {
      this.dependencies.hammerjs = '~1.0.5';
      delete this.overrides.hammerjs;
    });
  });

  desc('Add device.js (device information for CSS and JS)');
  task('devicejs', function() {
    editBower(function() {
      this.dependencies.devicejs = 'git://github.com/matthewhudson/device.js.git';
      this.overrides.devicejs = {
        main: 'lib/device.js'
      };
    });
  });
});

namespace('rem', function() {
  desc('Remove testing modules');
  task('testing', function() {
    return npm.execute('uninstall', '--save-dev',
      'karma-chai-plugins',
      'karma-detect-browsers',
      'karma-mocha',
      'chai',
      'mocha',
      'mocha-as-promised',
      'nodemon',
      'phantomjs',
      'selenium-webdriver');
  });

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

  desc('Remove FastClick');
  task('fastclick', function() {
    editBower(function() {
      delete this.dependencies.fastclick;
    });
  });

  desc('Remove Hammer.js');
  task('hammer', function() {
    editBower(function() {
      delete this.dependencies.hammerjs;
      delete this.overrides.hammerjs;
    });
  });

  desc('Remove device.js');
  task('devicejs', function() {
    editBower(function() {
      delete this.dependencies.devicejs;
      delete this.overrides.devicejs;
    });
  });
});

function editBower(callback) {
  var json = JSON.parse(fs.readFileSync('bower.json'));
  callback.call(json);
  fs.writeFileSync('bower.json', JSON.stringify(json, null, 2) + '\n');
}

function editPackage(callback) {
  var json = JSON.parse(fs.readFileSync('package.json'));
  callback.call(json);
  fs.writeFileSync('package.json', JSON.stringify(json, null, 2) + '\n');
}
