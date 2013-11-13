// Tasks to add modules to the project that are not included by default.
// This is usually either Bower packages or module-based Scaffolt generators.
var generators = require('./lib').generators;
var jsonfile = require('jsonfile');
var Promise = require('bluebird');
var resolvePath = require('./lib').resolvePath;

var bowerFile = resolvePath('bower.json');

namespace('add', function() {
  desc('Add normalize.css');
  task('normalize', function() {
    editBower(function() {
      this.dependencies['normalize-css'] = '~2.1.3';
    });
  });

  desc('Add Swag (Handlebar helpers)');
  task('swag', function() {
    editBower(function() {
      this.dependencies.swag = '~0.3.1';
    });
  });

  generators.forEach(function(generator) {
    if(generator.isModule) {
      desc('Add ' + generator.description);
      task(generator.task, function() {
        return new Promise(function(resolve) {
          jake.Task['scaffold:add']
          .addListener('complete', resolve)
          .invoke(generator.name);
        });
      });
    }
  });
});

namespace('rem', function() {
  desc('Remove normalize.css');
  task('normalize', function() {
    editBower(function() {
      delete this.dependencies['normalize-css'];
    });
  });

  desc('Remove Swag');
  task('swag', function() {
    editBower(function() {
      delete this.dependencies.swag;
    });
  });

  generators.forEach(function(generator) {
    if(generator.isModule) {
      desc('Remove ' + generator.description);
      task(generator.task, function() {
        return new Promise(function(resolve) {
          jake.Task['scaffold:rem']
          .addListener('complete', resolve)
          .invoke(generator.name);
        });
      });
    }
  });
});

function editBower(callback) {
  var json = jsonfile.readFileSync(bowerFile);
  callback.call(json);
  jsonfile.writeFileSync(bowerFile, json);
}
