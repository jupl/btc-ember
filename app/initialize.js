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

// If using Ember Data, change primary key to work with MongoDB's defaults
if(window.DS) {
  App.ApplicationSerializer = DS.RESTSerializer.extend({
    primaryKey: '_id'
  });
}
