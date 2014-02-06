// Tasks to add modules to the project that are not included by default.
// This is usually either Bower packages or module-based Scaffolt generators.
var generators = require('./lib').generators;
var jsonfile = require('jsonfile');
var npm = require('./lib').bin('npm');

namespace('add', function() {
  desc('Add support for testing (code/site)');
  task('testing', ['add:codetesting', 'add:sitetesting']);

  desc('Add support for code testing');
  task('codetesting', function() {
    editBower(function() {
      this.dependencies.chai = '~1.9.0';
      this.dependencies.mocha = '~1.17.1';
      this.dependencies.sinon = 'http://sinonjs.org/releases/sinon-1.7.3.js';
      this.dependencies['sinon-chai'] = '~2.5.0';
      this.overrides.mocha = {
        "main": [
          "mocha.css",
          "mocha.js"
        ]
      };
      this.overrides['sinon-chai'] = {
        "main": "lib/sinon-chai.js",
        "dependencies": {
          "sinon": "*",
          "chai": "*"
        }
      };
    });
    editPackage(function() {
      this.devDependencies.karma = '~0.10.9';
      this.devDependencies['karma-chai-plugins'] = '~0.2.0';
      this.devDependencies['karma-mocha'] = '~0.1.1';
    });
    return npm.execute('install');
  });

  desc('Add support for site testing');
  task('sitetesting', function() {
    editPackage(function() {
      this.devDependencies.chai = '~1.9.0';
      this.devDependencies.mocha = '~1.17.1';
      this.devDependencies['mocha-as-promised'] = '~2.0.0';
      this.devDependencies.nodemon = '~1.0.14';
      this.devDependencies['selenium-webdriver'] = '~2.39.0';
    });
    return npm.execute('install');
  });

  desc('Add Prerender');
  task('prerender', function() {
    editPackage(function() {
      this.dependencies.prerender = '~2.0.1';
      this.dependencies['prerender-node'] = '~0.1.15';
    });
    return npm.execute('install');
  });

  desc('Add normalize.css');
  task('normalize', function() {
    editBower(function() {
      this.dependencies['normalize-css'] = '~3.0.0';
    });
  });

  desc('Add Ember Data (Handlebar helpers)');
  task('data', function() {
    editBower(function() {
      this.dependencies['ember-data'] = '~1.0.0';
    });
  });

  desc('Add Swag (Handlebar helpers)');
  task('swag', function() {
    editBower(function() {
      this.dependencies.swag = '~0.5.0';
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
  desc('Remove support for testing (code/site)');
  task('testing', ['rem:codetesting', 'rem:sitetesting']);

  desc('Remove support for code testing');
  task('codetesting', function() {
    editBower(function() {
      delete this.dependencies.chai;
      delete this.dependencies.mocha;
      delete this.dependencies.sinon;
      delete this.dependencies['sinon-chai'];
      delete this.overrides.mocha;
      delete this.overrides['sinon-chai'];
    });
    return npm.execute('uninstall',
      'karma',
      'karma-chai-plugins',
      'karma-mocha',
      '--save-dev');
  });

  desc('Remove support for site testing');
  task('sitetesting', function() {
    return npm.execute('uninstall',
      'chai',
      'mocha',
      'mocha-as-promised',
      'nodemon',
      'selenium-webdriver',
      '--save-dev');
  });

  desc('Remove Prerender');
  task('prerender', function() {
    return npm.execute('uninstall', 'prerender', 'prerender-node', '--save');
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
    });
  });

  desc('Remove Swag');
  task('swag', function() {
    editBower(function() {
      delete this.dependencies.swag;
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
  var json = jsonfile.readFileSync('bower.json');
  callback.call(json);
  jsonfile.writeFileSync('bower.json', json);
}

function editPackage(callback) {
  var json = jsonfile.readFileSync('package.json');
  callback.call(json);
  jsonfile.writeFileSync('package.json', json);
}
