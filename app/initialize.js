// Add Swag if available
if(window.Swag) {
  Swag.registerHelpers();
}

// Initialize FastClick if available
if(window.FastClick) {
  new FastClick(document.body);
}

// If we are using Cordova, wait until device is ready
if(window.cordova) {
  document.addEventListener('deviceready', preInitialize, false);
}
else {
  preInitialize();
}

// Start the real initializer
function preInitialize() {
  $(document).ready(initialize);
}

// Initialize the application
function initialize() {
  if(!Ember.testing) {
    App.advanceReadiness();
  }
}
