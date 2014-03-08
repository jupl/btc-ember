# [BTC Ember](http://jupl.github.io/btc/ember/) 0.9.1
[![Dependency Status](https://gemnasium.com/jupl/btc-ember.png)](https://gemnasium.com/jupl/btc-ember)

This is a project template for [Ember.js](http://emberjs.com/) applications with server extras. Visit [the site](http://jupl.github.io/btc/) for more information.


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
    │   ├── browser-sync.js     # BrowserSync proxy setup
    │   ├── config.js           # Configuration options
    │   ├── index.js            # Starting point of server setup
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


## Setup
1. Download and install the following if you have not already:
  - [Node.js](http://nodejs.org/download/)
  - [Git](http://git-scm.com/downloads)
  - [Jake](https://github.com/mde/jake#installing-with-npm) (if developing)
  - [MongoDB](http://www.mongodb.org/) or service
2. Download one of the starter projects from GitHub.
3. Navigate to the project directory and run the command `npm install`.


## Notes

### `npm start` / `npm test`
One-line commands are provided for convenience as well for those that want to start running things as quickly as possible by installing depedencies automatically. Use `npm start` to download non-development packages and run the `build:prod` task. Use `npm test` to download all packages and run both the `test:install` and `test:all` tasks.

### Server
Out of the box the server provides:
- Serve static assets with support for HTML5 push state
- Models and sessions with [Mongoose](http://mongoosejs.com/)
- Authentication with [Passport](http://passportjs.org/)
- Caching with [Prerender](https://prerender.io/).

### Ember
Handlebars templates are precompiled when building the application. In addition, the full development of Ember is used for `dev` while the production version (no debug/assertion code) is used for `prod`.


## Libraries

### Core
- [BTC Ember](https://github.com/jupl/btc-ember) 0.9.1
- [BTC Serverpack](https://github.com/jupl/btc-serverpack) 0.1.1
