# [Cinder Brunch](https://github.com/jupl/cinder-brunch)

## Introduction
Cinder Brunch is a skeleton for building web applications, specifically single-page applications. While [Brunch](http://brunch.io) can be used to run commands, tasks are also supplied via `cake`.


## About
Cinder Brunch uses the [Ember.js](http://emberjs.com/) framework with [CoffeeScript](http://coffeescript.org/). With this skeleton, one does not need to worry about `require` statements when it comes to Ember modules while still wrapped in a function to better avoid global namespace pollution. This skeleton is not styling dependent, allowing one to use any style language they want. ([Here is a variant with Sass/Compass](https://github.com/jupl/cinder-brunch/tree/sass)) When building the proper Ember build (debug/production) will be used when assembling.


## Requirements
* [node.js](http://nodejs.org) (mandatory)
* [CoffeeScript](http://coffeescript.org/#installation) (recommended via npm)


## Setup
1. Install node.js.
2. While not mandatory, it is recommended to install CoffeeScript.
3. Download this skeleton.
4. Open a Terminal / Command Prompt and navigate to this directory where you downloaded the skeleton.
5. Execute the command `npm install` to install all package dependencies.


## Command List
While Brunch commands can be used, cake commands are provided for this skeleton. These tasks can be executed using cake if it is installed. (`cake [command]`) If cake is not installed these commands can also be executed using npm. (`npm run-script [command]`) These are the following commands (this list is accessible using either the command `cake` or `npm start`):

### Scaffolding
These commands allow one to generate and destroy Ember components.

#### `gen:model` / `del:model`
Generate/destroy an [Ember model](http://emberjs.com/guides/models/defining-models/).

#### `gen:route` / `del:route`
Generate/destroy an [Ember route](http://emberjs.com/guides/routing/defining-your-routes/).

#### `gen:controller` / `del:controller`
Generate/destroy an [Ember object controller](http://emberjs.com/guides/controllers/representing-a-single-model-with-objectcontroller/).

#### `gen:controller:array` / `del:controller:array`
Generate/destroy an [Ember array controller](http://emberjs.com/guides/controllers/representing-multiple-models-with-arraycontroller/).

#### `gen:view` / `del:view`
Generate/destroy an [Ember view](http://emberjs.com/guides/views/defining-a-view/).

#### `gen:template` / `del:template`
Generate/destroy an [Ember Handlebars template](http://emberjs.com/guides/templates/handlebars-basics/).

#### `gen:template:partial` / `del:template:partial`
Generate/destroy an Ember Handlebars partial template.

#### `gen:test` / `del:test`
Generate/destroy a test file to be run using Mocha.

### Building
These commands are used to assemble the application, generating the necessary JS/CSS and adding assets.
* Use `dev` mode to keep readable JS/CSS and include tests under the `test/` folder. Ember's debug build is used.
* Use `prod` mode to minify/uglify JS/CSS and omit tests. Ember's production build is used.

#### `build:[mode]`
Assemble the application once.

#### `watch:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected.

#### `server:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected. Also, the application is served locally to open with a browser. This build uses the `web` environment.

### Testing
Use the `test` command to execute tests in the terminal using jsdom.

## Details

### Core
* [Brunch](http://brunch.io) 1.5.3

### Languages
* [CoffeeScript](http://coffeescript.org) (includes [CoffeeLint](http://www.coffeelint.org))
* [Handlebars](http://handlebarsjs.com/) 1.0.0rc3

### Framework
* [Ember](http://emberjs.com/) 1.0.0rc1

### Utilities
* [jQuery](http://jquery.com) 1.9.1
* [Modernizr](http://modernizr.com/) 2.6.2 (in test)

### Extras
* [Auto-Reload Brunch](https://github.com/brunch/auto-reload-brunch)