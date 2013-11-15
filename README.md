# Cinder Brunch 0.4.1

[<img src="https://david-dm.org/jupl/cinder-brunch.png"/>](https://david-dm.org/jupl/cinder-brunch)
[<img src="https://david-dm.org/jupl/cinder-brunch/dev-status.png"/>](https://david-dm.org/jupl/cinder-brunch#info=devDependencies)

## Introduction
Cinder Brunch is a skeleton for building [Ember.js](http://emberjs.com/) applications. This skeleton leverages [node](http://nodejs.org), [Brunch](http://brunch.io), [Scaffolt](https://github.com/paulmillr/scaffolt), [Bower](http://bower.io/), [Jake](https://github.com/mde/jake), and [PhantomJS](http://phantomjs.org/) to provide cross-platform tasks in a simple package. In addition to assembling a standard web-based application, this skeleton can also assemble native applications using Cordova. [EditorConfig](http://editorconfig.org/) is also provided to help with consistency.


## File Structure

    ├── app                 # App is built here. Look at Brunch for more info.
    │   ├── assets          # Static files that are just copied
    │   ├── components      # Ember components
    │   ├── controller      # Ember controllers (regular, object, array)
    │   ├── models          # Objects that represent data for Ember
    │   ├── routes          # Ember routes
    │   ├── styles          # Stylus stylesheets
    │   ├── templates       # Handlebars templates and partials
    │   │   └── components  # Handlebars templates for Ember components
    │   ├── app.js          # Configure main application
    │   ├── app.styl        # Application/page styling definition
    │   ├── base.styl       # Stylus variables and mixins for the application
    │   ├── initialize.js   # Bootstrap the application
    │   ├── router.js       # Define routes to map
    │   └── view-helpers.js # User-defined Handlebars helpers
    ├── bower_components    # Packages installed by Bower
    ├── cordova             # Generated Cordova project
    ├── generators          # Generators used by Scaffolt
    ├── jakelib             # Unified set of tasks for development
    ├── public              # Generated final product
    ├── setup               # Add configuration options to brunch-config
    ├── test                # Test-related files
    │   ├── assets          # Static assets to run code tests manually
    │   ├── code            # Code-based tests for Karma/manual
    │   ├── site            # Site-based tests for Mocha and WebDriverJS
    │   ├── karma.conf.js   # Karma configuration for code tests
    │   ├── mocha.opts      # Default options for site tests
    │   └── setup.js        # Configuration for site tests
    ├── vendor              # 3rd party JS/CSS libraries
    ├── .editorconfig       # EditorConfig definition file for coding styles
    ├── bower.json          # Listing for Bower dependencies to download
    ├── brunch-config.js    # Brunch app build configuration
    └── package.json        # Project dependencies and configuration


## Requirements
- [node.js](http://nodejs.org)
- [Jake](https://github.com/mde/jake#installing-with-npm) (required for development)
- SDKs for devices to be developed on ([more information](https://github.com/apache/cordova-cli#requirements))


## Setup

1. Install node.js.
2. If doing development, install Jake.
4. Open a terminal window and navigate to the project directory.
5. Execute the command `npm install` to install all package dependencies.


## Notes
If you want to just run Brunch without using Jake tasks, just use either `web:dev` or `web:prod` for the environment. ex: `brunch watch --server --environment web:prod`

One-line commands are provided for convenience as well for those that want to start running things as quickly as possible by installing depedencies automatically. Use `npm start` to download non-development packages and run the `server:prod` task. Use `npm test` to download all packages and run the `test:all` task.

Handlebars templates are precompiled when building the application. In addition, the full development of Ember is used for `dev` while the production version (no debug/assertion code) is used for `prod`.


## Task List
While Brunch/Scaffolt/etc. can be used, Jake commands are provided for a simple and consistent interface. These tasks can be executed using `jake`. (`jake [task]`) These are the following available tasks provided out of the box:


### Bower

#### `bower:install`
Download and preinstall any Bower dependencies in advance. You can run this if you want to download Bower dependencies in advance.


### Extras
These commands add additional features/items to the project that are not included by default.

#### `add:jquery` / `rem:jquery`
Add/remove the ubiquitous library [jQuery](http://jquery.com/) to/from the project.

#### `add:normalize` / `rem:normalize`
Add/remove [normalize.css](http://necolas.github.io/normalize.css/) to ensure a consistent starting point in styling between different browsers.

#### `add:swag` / `rem:swag`
Add/remove [Swag](http://elving.github.io/swag/) to/from the project to add additional helpers for Handlebars.

#### `add:fastclick` / `rem:fastclick`
Add/remove FastClick to/from the project for optimized click events in touch devices. Visit their [page](https://github.com/ftlabs/fastclick) for more information and instructions.

#### `add:hammer` / `add:hammerjquery` / `rem:hammer`
Add/remove Hammer.js (standalone or jQuery plugin) to/from the project for touch event handling. Visit their [page](http://eightmedia.github.io/hammer.js/) for more information.

#### `add:devicejs` / `rem:devicejs`
Add/remove Device.js to handle different device options in CSS and JavaScript. Visit their [page](http://matthewhudson.me/projects/device.js/) for more information.

**NOTE**: Make sure to take a look at the `noConflict` method to avoid issues with the use of the `device` variable in Cordova.


### Cordova
These commands are to set up and initialize native projects that use Cordova to wrap your web application in a native app. `[device]` denotes the application device to build under. (Currently supporting `ios` and `android`) If you need access to the Cordova JavaScript from your page use the script tag: `<script src="cordova.js"></script>`

#### `cordova:init [package=io.cordova.hellocordova [name=HelloCordova]]`
Create a new Cordova project using [cordova-cli](https://github.com/apache/cordova-cli).
- Package and name options are optional, which uses the default Cordova options. If you specify `name`, you must also specify `package`.
- Project will reside in `cordova/`. If an existing project exists when running this task, it will be replaced with a new one.
- Cordova-specific files are added to `app/assets`. (These files will be ignored if a non-Cordova web build is made.) Do not remove these files.
- It is recommended for your web app to not depend on any files in `app/assets/res`.

#### `cordova:add device=[device]` / `cordova:rem device=[device]`
Add/remove specified device support to the Cordova project.


### Scaffolding
- Unit test files are automatically generated for models, controllers, and views.

#### `gen:model name=[name]` / `del:model name=[name]`
Generate/destroy an [Ember class](http://emberjs.com/guides/object-model/classes-and-instances/) that will be used to represent a model. (Read this [article](http://eviltrout.com/2013/03/23/ember-without-data.html) for more information.)

#### `gen:template name=[name]` / `del:template name=[name]`
Generate/destroy a Handlebars [template](http://emberjs.com/guides/templates/handlebars-basics/).

#### `gen:partial name=[name]` / `del:partial name=[name]`
Generate/destroy a [partial](http://emberjs.com/guides/templates/rendering-with-helpers/#toc_the-code-partial-code-helper) Handlebars template.

#### `gen:component name=[name]` / `del:component name=[name]`
Generate/destroy an [Ember component](http://emberjs.com/guides/components/defining-a-component/) and Handlebars template.

#### `gen:view name=[name]` / `del:view name=[name]`
Generate/destroy an [Ember view](http://emberjs.com/guides/views/defining-a-view/).

#### `gen:route name=[name]` / `del:route name=[name]`
Generate/destroy an [Ember route](http://emberjs.com/guides/routing/defining-your-routes/).

#### `gen:controller name=[name]` / `del:controller name=[name]`
Generate/destroy an [Ember controller](http://emberjs.com/guides/controllers/).

#### `gen:objcontroller name=[name]` / `del:objcontroller name=[name]`
Generate/destroy an [Ember object controller](http://emberjs.com/guides/controllers/representing-a-single-model-with-objectcontroller/).

#### `gen:arrcontroller name=[name]` / `del:arrcontroller name=[name]`
Generate/destroy an [Ember array controller](http://emberjs.com/guides/controllers/representing-multiple-models-with-arraycontroller/). Specify the name in singular form, as it will automatically be pluralized.

#### `gen:style name=[name]` / `del:style name=[name]`
Generate/destroy a Stylus stylesheet file.

#### `gen:codetest name=[name]` / `del:codetest name=[name]`
Generate/destroy a test file with the given test name for testing code. (ex: unit testing, integration testing)

#### `gen:sitetest name=[name]` / `del:sitetest name=[name]`
Generate/destroy a test file with the given test name for testing the site. (ex: functional testing)


### Testing
Tests leverage [Mocha](http://visionmedia.github.io/mocha/), [Mocha as Promised](https://github.com/domenic/mocha-as-promised), and [Chai](http://chaijs.com/). Code and site testing is provided. Code testing adds [Sinon](http://sinonjs.org/) and [Sinon-Chai](https://github.com/domenic/sinon-chai).

#### `test:all [codereporter=progress] [sitereporter=spec] [browsers=[browsers]]`
Run all tests listed below once. For more information on reporters see below.

#### `test:code [reporter=progress] [watch=false] [browsers=[browsers]]`
Run code-based tests (ex. unit tests) using Karma. Karma is preconfigured to run with [PhantomJS](http://phantomjs.org/). A Karma reporter can be specified with the `reporter` option. You can also override the browsers to run with with the `browsers` option. (ex: `browsers=Chrome,Firefox,Safari`) If you run this task with `watch=true` Karma will auto-run on file changes. Otherwise by default Karma runs once. You can also run the server while watching files with `watch=server`. In addition, if you run a build (see below) with the `dev` environment the tests are included with a reporter under `test` to run in browsers. (ex. visit `http://locahost:[port]/test`)

#### `test:site [reporter=spec] [watch=false]`
Run site-based tests (ex. system tests) using Mocha, PhantomJS, and WebDriverJS. A Brunch server is started up temporarily to interact with the site. A Mocha reporter can be specified with the `reporter` option. If you run this task with `watch=true` Mocha will auto-run on file changes with [nodemon](http://remy.github.io/nodemon/). Otherwise by default Mocha runs once. The global method `getDriver` is provided to get a setup and built driver. WebDriverJS' use of Promises can be combined with Mocha as Promised to handle asynchronous behavior easily. ex:

```js
describe('Sample', function() {
  var driver;

  before(function() {
    driver = getDriver();
  });

  it('Has a proper title', function() {
    return driver.get('http://localhost:3333').then(function() {
      return driver.getTitle();
    })
    .then(function(title) {
      expect(title).to.equal('Brunch Toolchain');
    });
  });

  after(function() {
    driver.quit();
  });
});
```


### Building
These commands are used to assemble the application, generating the necessary JS/CSS and adding assets. Use `dev` mode to keep readable JS/CSS, plus include source maps as well as tests under the `test/` folder. Use `prod` mode to minify/uglify JS/CSS as well as omit source maps and tests. Specify `device` where applicable to build a native app using Cordova for a specific device. If any Bower dependencies have not been downloaded yet, Bower will first download them.

#### `build:[mode] [device=[device]]`
Assemble the application once. If `device` is specified, then build a native app for a device using Cordova. Otherwise it uses the default web environment.

#### `watch:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected.

#### `server:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected. Also, the application is served locally to open with a browser. This build uses the web environment.

#### `emulate:[mode] device=[device]`
Assemble the application, compile, and deploy to an emulator for the specified device.

**NOTE**: [ios-sim](https://github.com/phonegap/ios-sim) is required to run the iOS Simulator.


## Libraries

### Core
- [Cinder Brunch](https://github.com/jupl/brunch-toolchain) 0.4.1
- [Cordova Brunch](https://github.com/jupl/brunch-toolchain) 0.4.1
