# Cinder Brunch 0.8.3
[![Dependency Status](https://gemnasium.com/jupl/cinder-brunch.png)](https://gemnasium.com/jupl/cinder-brunch)


## Introduction
Cinder Brunch is a skeleton for building [Ember.js](http://emberjs.com/) applications. This skeleton leverages [node](http://nodejs.org), [Brunch](http://brunch.io), [Scaffolt](https://github.com/paulmillr/scaffolt), [Bower](http://bower.io/), and [Jake](https://github.com/mde/jake) to provide cross-platform tasks in a simple package.

For a mobile/Cordova friendly variant, check out [this skeleton](https://github.com/jupl/cinder-brunch/tree/cordova).


## File Structure
    ├── app                     # Assets/code/styles for the client application
    │   ├── assets              # Static files copied without modification
    │   ├── components          # Ember components
    │   ├── controller          # Ember controllers (regular, object, array)
    │   ├── models              # Objects that represent data for Ember
    │   ├── routes              # Ember routes
    │   ├── styles              # Stylus stylesheets
    │   ├── templates           # Handlebars templates and partials
    │   │   └── components      # Handlebars templates for Ember components
    │   ├── views               # Ember views
    │   ├── app.styl            # Application/page styling definition
    │   ├── base.styl           # Stylus variables and mixins for the application
    │   ├── initialize.js       # Bootstrap the application
    │   ├── router.js           # Define routes to map
    │   └── view-helpers.js     # User-defined Handlebars helpers
    ├── generators              # Generators used by Scaffolt
    ├── jakelib                 # Unified set of tasks for development
    ├── public                  # Compiled client-side assets
    ├── server                  # Server configuration
    │   ├── models              # Persistent server-side model configuration
    │   ├── passport            # Passport integration
    │   ├── routes              # Custom routes/proxies/etc. (server-side)
    │   ├── config.js           # Configuration options
    │   ├── prerender.js        # Prerender middleware integration
    │   └── session.js          # Session configuration
    ├── test                    # Test-related files
    │   ├── code                # Code tests that run with Karma
    │   ├── site                # Site tests that run with WebDriverJS
    │   ├── mocha.opts          # Default options for site testing
    │   └── setup.js            # Initialization for site testing
    ├── vendor                  # Additional 3rd party JS/CSS libraries
    ├── .editorconfig           # EditorConfig definitions for coding styles
    ├── bower.json              # Listing for Bower dependencies to download
    ├── brunch-config.js        # Brunch app build configuration
    ├── karma.conf.js           # Karma runner setup
    └── package.json            # Node project dependencies and configuration


## Requirements
- [node.js](http://nodejs.org)
- [Jake](https://github.com/mde/jake#installing-with-npm) (required for development)
- [MongoDB](http://www.mongodb.org/) (if using server extras)


## Setup
1. Install node.js.
2. If using Windows and leveraging Bower, install [Git](http://git-scm.com/download/win).
3. If working on development, install Jake.
4. Open a terminal window and navigate to the project directory.
5. Execute the command `npm install` to install all package dependencies.
6. If server is not going to just serve static assets, run the `add:serverextras` task.


## Notes

### `npm start` / `npm test`
One-line commands are provided for convenience as well for those that want to start running things as quickly as possible by installing depedencies automatically. Use `npm start` to download non-development packages and run the `server:prod` task. Use `npm test` to download all packages and run the `test:all` task.

### Server
Out of the box the server provided simply serves static assets with support for HTML5 push state. Extensible server extras can be added to support models and sessions with [Mongoose](http://mongoosejs.com/), authentication with [Passport](http://passportjs.org/), and caching with [Prerender](https://prerender.io/). To add extras, see the `add:serverextras` task.

Handlebars templates are precompiled when building the application. In addition, the full development of Ember is used for `dev` while the production version (no debug/assertion code) is used for `prod`.


## Task List
While Brunch/Scaffolt/etc. can be used, Jake commands are provided for a simple and consistent interface. These tasks can be executed using `jake`. (`jake [task]`) These are the following available tasks provided out of the box:


### NPM

#### `npm:clean`
Remove downloaded Node modules. This is useful if you want to reinstall dependencies. (ex. updated/corrupted package(s)) Remember that you need to call `npm install` to install dependencies.


### Bower

#### `bower:install`
Download and preinstall any Bower dependencies in advance. You can run this if you want to download Bower dependencies in advance.

#### `bower:clean`
Remove downloaded Bower dependencies. This is useful if you want to reinstall dependencies. (ex. updated/corrupted package(s))


### Extras
These commands add additional features/items to the project that are not included by default.

#### `add:testing` / `rem:testing`
Add/remove packages require to run code and site testing.

#### `add:serverextras` / `rem:serverextras`
Add/remove extra packages to the server so that it does more than just serve static assets. For more information see notes above.

#### `add:normalize` / `rem:normalize`
Add/remove [normalize.css](http://necolas.github.io/normalize.css/) to ensure a consistent starting point in styling between different browsers.

#### `add:data` / `rem:data`
Add/remove [Ember Data](https://github.com/emberjs/data) to/from the project for a data persistence layer.

#### `add:swag` / `rem:swag`
Add/remove [Swag](http://elving.github.io/swag/) to/from the project to add additional helpers for Handlebars.


### Scaffolding
Scaffolding commands are available in the form of `generate` and `destroy`. (syntax ex: `jake generate codetest=user`) Multiple scaffolds can be specified in a single command, as well as separating names with commas. (ex: `jake generate codetest=test1,test2 sitetest=test3`) The following aliases are also available: `g`, `gen`, `d`, `del`. (ex: `jake g codetest=user`) Unit test files are automatically generated for models, controllers, components, and views.

#### `generate` / `destroy`
List available scaffolds.

#### `generate model=[name]` / `destroy model=[name]`
Generate/destroy an [Ember class](http://emberjs.com/guides/object-model/classes-and-instances/) that will be used to represent a model. (Read this [article](http://eviltrout.com/2013/03/23/ember-without-data.html) for more information.)

#### `generate data=[name]` / `destroy data=[name]`
Generate/destroy an [Ember Data model](http://emberjs.com/guides/models/defining-models/) that will be used to represent a model. Ember Data is required. (see `add:data` task)

#### `generate template=[name]` / `destroy template=[name]`
Generate/destroy a Handlebars [template](http://emberjs.com/guides/templates/handlebars-basics/). You can specify subdirectories. (ex: `jake gen template=products/index`)

#### `generate partial=[name]` / `destroy partial=[name]`
Generate/destroy a [partial](http://emberjs.com/guides/templates/rendering-with-helpers/#toc_the-code-partial-code-helper) Handlebars template.

#### `generate component=[name]` / `destroy component=[name]`
Generate/destroy an [Ember component](http://emberjs.com/guides/components/defining-a-component/) and Handlebars template.

#### `generate view=[name]` / `destroy view=[name]`
Generate/destroy an [Ember view](http://emberjs.com/guides/views/defining-a-view/).

#### `generate route=[name]` / `destroy route=[name]`
Generate/destroy an [Ember route](http://emberjs.com/guides/routing/defining-your-routes/).

#### `generate controller=[name]` / `destroy controller=[name]`
Generate/destroy an [Ember controller](http://emberjs.com/guides/controllers/).

#### `generate objcontroller=[name]` / `destroy objcontroller=[name]`
Generate/destroy an [Ember object controller](http://emberjs.com/guides/controllers/representing-a-single-model-with-objectcontroller/).

#### `generate arrcontroller=[name]` / `destroy arrcontroller=[name]`
Generate/destroy an [Ember array controller](http://emberjs.com/guides/controllers/representing-multiple-models-with-arraycontroller/). Specify the name in singular form, as it will automatically be pluralized.

#### `generate style=[name]` / `destroy style=[name]`
Generate/destroy a Stylus stylesheet file.

#### `generate codetest=[name]` / `destroy codetest=[name]`
Generate/destroy a test file with the given test name for testing code. (ex: unit testing)

#### `generate sitetest=[name]` / `destroy sitetest=[name]`
Generate/destroy a test file with the given test name for testing the site with WebDriverJS.


### Testing
Tests leverage [Mocha](http://visionmedia.github.io/mocha/), [Mocha as Promised](https://github.com/domenic/mocha-as-promised), and [Chai](http://chaijs.com/). Code and site testing is provided. Code testing adds [Sinon](http://sinonjs.org/) and [Sinon-Chai](https://github.com/domenic/sinon-chai). Testing packages will automatically be installed if not available.

#### `test:all [codereporter=[codereporter]] [sitereporter=[sitereporter]]`
Run all tests listed below once. For more information on reporters see below.

#### `test:code [reporter=[reporter]] [watch=false]`
Run code-based tests (ex. unit tests) using Karma. Karma is preconfigured to run with all available browsers on the system. ([PhantomJS](http://phantomjs.org/) is included). Karma reporter can be specified with the `reporter` option. If you run this task with `watch=true` Karma will auto-run on file changes. Otherwise by default Karma runs once. You can also run the server while watching files with `watch=server`.

#### `test:site [reporter=[reporter]] [watch=false]`
Run site-based tests (ex. system tests) using PhantomJS and WebDriverJS. A server is started up temporarily to interact with the site. A Mocha reporter can be specified with the `reporter` option. If you run this task with `watch=true` Mocha will auto-run on file changes with [nodemon](http://remy.github.io/nodemon/). Otherwise by default Mocha runs once. The global method `getDriver` is provided to get a setup and built driver. WebDriverJS' use of Promises can be combined with Mocha as Promised to handle asynchronous behavior easily. ex:

```js
'use strict';

describe('Sample', function() {
  var driver;

  before(function() {
    driver = getDriver();
  });

  beforeEach(function() {
    return driver.get(baseUrl);
  });

  it('Has a proper title', function() {
    return driver.getTitle().then(function(title) {
      title.should.equal('Cinder Brunch');
    });
  });

  after(function() {
    driver.quit();
  });
});
```


### Building
These commands are used to assemble the application, generating the necessary JS/CSS and adding assets. Use `dev` mode to keep readable JS/CSS, plus include source maps. Use `prod` mode to minify/uglify JS/CSS as well as omit source maps and tests. If any Bower dependencies have not been downloaded yet, Bower will first download them.

#### `build:[mode]`
Assemble the application once.

#### `watch:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected.

#### `server:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected. Also, the application is served locally to open with a browser.


## Libraries

### Core
- [Brunch Toolchain](https://github.com/jupl/brunch-toolchain) 0.9.3

### Languages
- [Handlebars](http://handlebarsjs.com/)
- [Stylus](http://learnboost.github.io/stylus/)

### Framework
- [Ember](http://emberjs.com/)

### Utilities
- [jQuery](http://jquery.com)
- [Nib](http://visionmedia.github.io/nib/)
- [Ember Data](https://github.com/emberjs/data)
