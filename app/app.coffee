window.App = Ember.Application.create()

App.deferReadiness()
App.Store = DS.Store.extend(revision: 11)