// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


//= require jquery
//= require rails-ujs
//= require clipboard

$(document).ready(function(){  
  var clipboard = new ClipboardJS('.clipboard-btn');
  console.log(clipboard);
});