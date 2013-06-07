# Cinder Brunch 0.3.0

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
While Brunch/Scaffolt commands can be used, cake commands are provided for this skeleton. These tasks can be executed using cake if it is installed. (`cake [command]`) If cake is not installed these commands can also be executed using npm. (`npm run-script [command]`) These are the following commands (this list is accessible using either the command `cake` or `npm start`):

### Extras
These commands add additional features/items to the project that are not included by default.

#### `add:bootstrap`
Add Bootstrap and Font Awesome styles to the project. LESS-based files are provided for full customization.

#### `add:bootstrap:js` / `rem:bootstrap:js`
Add/remove Bootstrap JavaScript files to/from the project. These are essential for some [plugins](http://twitter.github.io/bootstrap/javascript.html) to work.

#### `add:bootstrap:responsive` / `rem:bootstrap:responsive`
Add/remove Bootstrap files for responsiveness.

#### `add:bootstrap:glyph` / `add:bootstrap:awesome`
Add Glyphicons or Font Awesome icons. Note that adding one removes the other.

#### `rem:bootstrap`
Removes all of the above Bootstrap-related components from the project.

#### `add:ember:data` / `rem:ember:data`
Add/remove [Ember Data](https://github.com/emberjs/data) to/from the project.

### Scaffolding
These commands allow one to generate and destroy Ember components. `[template]` denotes the template type to use. (Use `hbs` for [Ember Handlebars](http://emberjs.com/guides/templates/handlebars-basics/) or `emblem` for [Emblem](http://emblemjs.com/syntax/))

#### `gen:model:object` / `del:model:object`
Generate/destroy an [Ember class](http://emberjs.com/guides/object-model/classes-and-instances/) that will be used to represent a model. This can be used instead if not using Ember Data.

#### `gen:model:ember` / `del:model:ember`
Generate/destroy an [Ember Data model](http://emberjs.com/guides/models/defining-models/). Make sure that Ember Data is added to the project.

#### `gen:template:[template]` / `del:template:[template]`
Generate/destroy a template.

#### `gen:template:partial:[template]` / `del:template:partial:[template]`
Generate/destroy a partial template.

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

## Details

### Core
* [Brunch Toolchain](https://github.com/jupl/brunch-toolchain) 0.1.4

### Languages
* [CoffeeScript](http://coffeescript.org) (includes [CoffeeLint](http://www.coffeelint.org))
* [Handlebars](http://handlebarsjs.com/) 1.0.0rc4
* [Emblem](http://emblemjs.com/) 0.2.7
* [LESS](http://lesscss.org)

### Framework
* [Ember](http://emberjs.com/) 1.0.0rc5
* [Ember Data](https://github.com/emberjs/data) 0.13

### Utilities
* [jQuery](http://jquery.com) 2.0.2
* [Modernizr](http://modernizr.com/) 2.6.2 (in test)

### Styling
* [Clearless](http://clearleft.github.com/clearless/)
* [Bootstrap](http://getbootstrap.com/) 2.3.2
* [Font Awesome](http://fortawesome.github.com/Font-Awesome/) 3.1.1

### Extras
* [Auto-Reload Brunch](https://github.com/brunch/auto-reload-brunch)