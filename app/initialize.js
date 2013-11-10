$(document).ready(initialize);

function initialize() {
  // Add Swag if available
  if(window.Swag) {
    Swag.registerHelpers();
  }

  // Do not start automatically if testing
  if(!Ember.testing) {
    App.advanceReadiness();
  }
}
