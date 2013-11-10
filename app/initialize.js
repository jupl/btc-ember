$(document).ready(initialize);

function initialize() {
  if(window.Swag) {
    Swag.registerHelpers();
  }

  App.advanceReadiness();
}
