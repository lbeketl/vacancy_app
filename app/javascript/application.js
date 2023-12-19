// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "./controllers"
import "flowbite/dist/flowbite.turbo.js";
import "mapkick/bundle"

window.initMap = function(...args) {
  const event = new Event("google-maps-callback", { bubbles: true, cancelable: true });
  event.args = args
  window.dispatchEvent(event)
}
