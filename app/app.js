window.App = Ember.Application.create();
App.deferReadiness();

// Temporary fix for ember-precompiler-brunch
if(!window.module) {
  window.module = {};
}
