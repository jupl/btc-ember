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
