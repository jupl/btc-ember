'use strict';

window.App = Ember.Application.create();

// Temporary fix for ember-precompiler-brunch
if(!window.module) {
  window.module = {};
}

// Add Swag if available
if(window.Swag) {
  Swag.registerHelpers();
}

// Initialize FastClick if available
if(window.FastClick) {
  new FastClick(document.body);
}

// If running in Cordova, start app on deviceready instead
if(window.cordova) {
  App.deferReadiness();
  document.addEventListener('deviceready', function() {
    App.advanceReadiness();
  }, false);
}
