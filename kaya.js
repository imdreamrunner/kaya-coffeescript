// Generated by CoffeeScript 1.6.3
(function() {
  Kaya.Stage = (function() {
    function Stage() {}

    return Stage;

  })();

  Kaya.App = (function() {
    function App(config) {
      this.config = config;
    }

    App.prototype.start = function() {
      var GameDOM, documentObjectString;
      documentObjectString = "#game";
      if ("documentObject" in this.config) {
        documentObjectString = this.config.documentObject;
      }
      GameDOM = document.querySelector(documentObjectString);
      if (GameDOM === null) {
        throw new Error("Document object not found");
      }
      return console.log("App starts.");
    };

    return App;

  })();

}).call(this);
