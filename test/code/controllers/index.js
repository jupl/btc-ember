describe('IndexController', function() {
  var indexController;

  beforeEach(function() {
    Ember.run(function() {
      App.reset();
      indexController = App.IndexController.create();
    });
  });



  afterEach(function() {
    Ember.run(function() {
      indexController.destroy();
    });
  });
});
