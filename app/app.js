window.App = Ember.Application.create();
App.deferReadiness();

// Hidden element for testing
if(Ember.testing) {
  App.rootElement = document.createElement('div');
}

// Temporary fix for ember-precompiler-brunch
if(!window.module) {
  window.module = {};
}
