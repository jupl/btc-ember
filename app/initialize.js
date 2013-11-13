// Add Swag if available
if(window.Swag) {
  Swag.registerHelpers();
}

// Wait in starting the application
$(document).ready(initialize);

// Initialize the application
function initialize() {
  if(!Ember.testing) {
    App.advanceReadiness();
  }
}
