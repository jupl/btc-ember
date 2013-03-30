# Cinder Brunch 0.1.2

## Introduction
Cinder Brunch is a skeleton for building web applications, specifically single-page applications. While [Brunch](http://brunch.io) can be used to run commands, tasks are also supplied via `cake`.


## About
Cinder Brunch uses the [Ember.js](http://emberjs.com/) framework with [CoffeeScript](http://coffeescript.org/). With this skeleton, one does not need to worry about `require` statements when it comes to Ember modules while still wrapped in a function to better avoid global namespace pollution. When building the proper Ember build (debug/production) will be used when assembling.


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

### Extras
These commands add additional features/items to the project that are not included by default.

#### `add:bootstrap` / `rem:bootstrap`
Add/remove Bootstrap and Font Awesome to/from the project. LESS-based files are provided for full customization. It is recommended that you modify `app.less` and `base.less` if using Bootstrap.

#### `add:ember:data` / `rem:ember:data`
Add/remove [Ember Data](https://github.com/emberjs/data) to/from the project.

#### `add:fastclick` / `rem:fastclick`
Add/remove FastClick to/from the project for optimized click events in touch devices.

### Scaffolding
These commands allow one to generate and destroy Ember components.

#### `gen:model:object` / `del:model:object`
Generate/destroy an [Ember class](http://emberjs.com/guides/object-model/classes-and-instances/) that will be used to represent a model. This can be used instead if not using Ember Data.

#### `gen:model:ember` / `del:model:ember`
Generate/destroy an [Ember Data model](http://emberjs.com/guides/models/defining-models/). Make sure that Ember Data is added to the project.

#### `gen:template` / `del:template`
Generate/destroy an [Ember Handlebars template](http://emberjs.com/guides/templates/handlebars-basics/).

#### `gen:template:partial` / `del:template:partial`
Generate/destroy an Ember Handlebars partial template.

#### `gen:view` / `del:view`
Generate/destroy an [Ember view](http://emberjs.com/guides/views/defining-a-view/).

#### `gen:route` / `del:route`
Generate/destroy an [Ember route](http://emberjs.com/guides/routing/defining-your-routes/).

#### `gen:controller` / `del:controller`
Generate/destroy an [Ember controller](http://emberjs.com/api/classes/Ember.Controller.html).

#### `gen:controller:object` / `del:controller:object`
Generate/destroy an [Ember object controller](http://emberjs.com/guides/controllers/representing-a-single-model-with-objectcontroller/).

#### `gen:controller:array` / `del:controller:array`
Generate/destroy an [Ember array controller](http://emberjs.com/guides/controllers/representing-multiple-models-with-arraycontroller/). Specify the name in singular form, as it will automatically be pluralized.

#### `gen:test` / `del:test`
Generate/destroy a test file to be run using Mocha.

#### `gen:style` / `del:style`
Generate/destroy a LESS stylesheet file.

### Cordova
These commands are to set up and initialize native projects that use Cordova to wrap your web application in a native app. `[platform]` denotes the application platform to build under. (Currently supporting `ios` and `android`) If you need access to the Cordova JavaScript from your page use the script tag: `<script src="cordova.js"></script>`

#### `cordova:init`
Create a new Cordova project using [cordova-cli](https://github.com/apache/cordova-cli).
* When creating a project, you will be prompted for a package name and app name. (If anything is not provided, Cordova defaults will be used.)
* Project will reside in `build/cordova`.
* Cordova-specific files are added to `app/assets`. (These files will be ignored if a non-Cordova web build is made.) Do not remove these files.
* It is recommended for your web app to not depend on any files in `app/assets/res`.

#### `cordova:add:[platform]`, `cordova:rem:[platform]`
Add/remove specified platform support to the Cordova project.

### Building
These commands are used to assemble the application, generating the necessary JS/CSS and adding assets.
* `[platform]` denotes the application platform to build under. (Currently supporting `ios` and `android`)
* `[mode]` Use `dev` mode to keep readable JS/CSS and include tests under the `test/` folder. Use `prod` mode to minify/uglify JS/CSS and omit tests.

#### `build:web:[mode]`, `build:[platform]:[mode]`
Assemble the application once. If a Cordova build is made, it will also compile for the specified platform.

#### `watch:web:[mode]`, `watch:cordova:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected.

#### `server:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected. Also, the application is served locally to open with a browser. This build uses the `web` environment.

#### `emulate:[platform]:[mode]`
Assemble the application, compile, and deploy to an emulator for the specified platform.

**NOTE**: [ios-sim](https://github.com/phonegap/ios-sim) is required to emulate on the iOS Simulator.


## Details

### Core
* [Brunch](http://brunch.io) 1.6.1
* [Brunch Toolchain](https://github.com/jupl/brunch-toolchain) 0.1.1
* [Cordova](http://cordova.apache.org)

### Languages
* [CoffeeScript](http://coffeescript.org) (includes [CoffeeLint](http://www.coffeelint.org))
* [Handlebars](http://handlebarsjs.com/) 1.0.0rc3
* [LESS](http://lesscss.org)

### Framework
* [Ember](http://emberjs.com/) 1.0.0rc2

### Utilities
* [jQuery](http://jquery.com) 1.9.1
* [Modernizr](http://modernizr.com/) 2.6.2 (in test)
* [FastClick](https://github.com/ftlabs/fastclick) 0.6.3

### Styling
* [Clearless](http://clearleft.github.com/clearless/)
* [Bootstrap](http://getbootstrap.com/) 2.3.1
* [Font Awesome](http://fortawesome.github.com/Font-Awesome/) 3.0.2

### Extras
* [Auto-Reload Brunch](https://github.com/brunch/auto-reload-brunch)
