// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

// Semantic UI
// = require semantic-ui

import "@hotwired/turbo-rails"
import "controllers"
import "jquery"

$(document).on("turbo:load", function() {
  /* ドロップダウン */
  $('.ui.dropdown').dropdown();

  /* アコーディオン */
  $('.ui.accordion').accordion();

});
