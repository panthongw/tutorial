// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

  var markdown = new Showdown.converter();
  function Editor(input, preview) {
    this.update = function () {
      preview.innerHTML = markdown.toHTML(input.value);
    };
    input.editor = this;
    this.update();
  }
  var $ = function (id) { return document.getElementById(id); };
  new Editor($("post_content"), $("preview"));