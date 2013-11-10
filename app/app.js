window.module = {}; // Temporary fix for ember-precompiler-brunch
window.App = Ember.Application.create();
App.deferReadiness();

if(window.DS) {
  App.Store = DS.Store.extend({revision: 11});
}
