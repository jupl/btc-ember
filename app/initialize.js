$(document).ready(initialize);

function initialize() {
  // Add Swag if available
  if(window.Swag) {
    Swag.registerHelpers();
  }

  App.advanceReadiness();
}
