# Changelog

#### 0.9.2 (March 10, 2014)
- Update BTC
  - Update BrowserSync
  - Update Bluebird
  - Update PhantomJS
  - Update Selenium Webdriver

#### 0.9.1 (March 7, 2014)
- Update BTC Cordova
  - Update Hammer.js
    - Update how Hammer and jquery.hammer is added to Bower
- Update BTC
  - Update Express.js
  - Include Normalize.css by default

### 0.9.0 (March 1, 2014)
- Update Ember to 1.4.0
- Remove IIFEs, set strict mode once at initialize.js
- Do not use pushState by default for this skeleton
- Update Cordova Brunch
  - Update Cordova to 3.4
  - Update FastClick to 1.0.0
- Update BTC
  - Remove server extras (let the user customize as needed, will go to a separate repo)
  - Simplify generator-related tasks by reusing code
  - Installing test-related modules does not modify `package.json`
  - Install Bower components automatically after running `npm install`
  - Rename paths for generated JS/CSS
  - For index.html, use relative paths by default
  - Add BrowserSync as an option for autoreload
  - Update paths for code and site testing

#### 0.8.3 (February 11, 2014)
- Update BTC
  - Revert to editing `package.json` and `bower.json`

#### 0.8.1 (February 11, 2014)
- Update BTC
  - Simplify scaffold-related tasks
  - Fix issue with waiting for files to build before running tasks

### 0.8.0 (February 11, 2014)
- Enforce strict mode
- Remove dashes in generators
- Simplify Brunch config
- Update Cordova Brunch
  - Simplify server
  - No need to copy config.xml anymore
  - Rename `cordova:gen` to `cordova:init`
- Update BTC
  - Remove Prerender server
  - Add support for Mongoose/Passport/sessions
  - Detect browsers in Karma
  - Server refactoring
  - Unify `add:codetesting` and `add:sitetesting` tasks
  - Add scaffold to generate server model
  - Add aliases to generator tasks

### 0.7.0 (February 5, 2014)
- Update BTC
  - Do not install code/site testing-related packages by default
  - Add tasks to install/uninstall code/site testing-related packages
  - Update Sinon Chai
  - Fix bug in `npm:clean`

#### 0.6.1 (February 4, 2014)
- Revert jQuery update for now

### 0.6.0 (February 4, 2014)
- Update BTC
  - Clean npm cache for `npm:clean`
  - Add structure to `server` directory
  - Update karma-chai-plugins

#### 0.5.4 (February 1, 2014)
- Update BTC
  - Add `npm:clean` task
  - Clean up package.json
  - Update jQuery
  - Update normalize.css
  - Update Chai

#### 0.5.3 (January 16, 2014)
- Update Ember
- Update Handlebars
- Update BTC
  - Fix watch in `test:code`
  - Update Mocha
  - Update Bluebird
  - Update Nodemon

#### 0.5.2 (December 21, 2013)
- Add test file to component generator
- Add Ember Data back
- Update Cordova Brunch
  - Add task to add/remove plugins
  - Add task to upgrade device platform
  - Add task to list device platforms and plugins
- Update BTC
  - Update Mocha
  - Update WebDriverJS

#### 0.5.1 (December 14, 2013)
- Update Cordova to 3.3
- Update BTC
  - Allow multiple names to be specified per scaffold
  - Move default Jake task to Jakefile
  - Include server to customize and add services
  - Update packages

### 0.5.0 (December 12, 2013)
- Update BTC
  - Fix Windows support
  - Internal fix to bring back spawn options
  - Add specific WebStorm and IntelliJ files to gitignore
  - Stop worrying about absolute paths
  - Mark execute promises as cancellable
  - Move auto-reload-brunch to devDependencies
  - Allow project's bower to be run if root (or root-like)
  - Update dependencies
  - Added `bower:clean` task
  - Changed behavior of `gen`/`del` tasks
- Update libraries (Ember, Handlebars, Swag)
- Update Cordova Brunch
  - Fix typo in copying `config.xml`
  - Update Cordova to 3.2
    - Stop referencing `res`
  - Rename `cordova:init` to `cordova:gen`
  - Fix broken URL for device.js in generator
  - Change device.js code from last update to work better for testing

#### 0.4.1 (November 14, 2013)
- Update BTC

### 0.4.0 (November 12, 2013)
- Update BTC
- Update libraries
- Leverage Bower
- Move back to Handlebars only for now
- Transition to JS and Stylus
- Add Swag as a module
- Remove Bootstrap
- Remove Ember Data for now

### 0.3.0 (June 6, 2013)
- Update Ember.js to 1.0.0rc5
- Update Handlebars to 1.0.0rc4
- Update Ember Data to 0.13
- Update Emblem to 0.2.7
- Update jQuery to 2.0.2
- Integrate BTC Bootstrap
- Added generators for both Handlebars and Emblem

### 0.2.0 (May 19, 2013)
- Update Brunch Toolchain.
- Update Ember.js to 1.0.0rc3 and Handlebars to 1.0.0rc4.
- Update jQuery and Font Awesome.
- Added Emblem support.
- Enabled Ember.testing when running Mocha tests.
- Array controller generator no longer auto-pluralizes.
- Cleanup.

#### 0.1.2 (March 30, 2013)
- Update Ember.js to 1.0.0rc2.

#### 0.1.1 (March 29, 2013)
- Update Brunch Toolchain.

### 0.1.0 (March 28, 2013)
- Initial release.
