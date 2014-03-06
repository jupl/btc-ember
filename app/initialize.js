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

// Check if Ember data is available
// If it is set the primary key to be _id based on mongo's output
if(window.DS){
  App.ApplicationSerializer = DS.RESTSerializer.extend({
      primaryKey: '_id'
  });
}
