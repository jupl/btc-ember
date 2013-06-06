# BTC Bootstrap 0.1.0

## Introduction
BTC Bootstrap provides some tasks for working with Bootstrap. This tool is baked into other skeletons for easily including Bootstrap where needed.


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

## Details

### Core
* [Brunch Toolchain](https://github.com/jupl/brunch-toolchain) 0.1.4

### Languages
* [LESS](http://lesscss.org)

### Styling
* [Bootstrap](http://getbootstrap.com/) 2.3.2
* [Font Awesome](http://fortawesome.github.com/Font-Awesome/) 3.1.1