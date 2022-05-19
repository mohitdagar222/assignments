// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


document.addEventListener("DOMContentLoaded", initMap());

let map;

function initMap() {
    var map = new google.maps.Map(document.getElementById('map-canvas'), {
        zoom: 5,
        center: { lat: 20.5937, lng: 78.9629 }
    });


    var ctaLayer = new google.maps.KmlLayer({
        url: 'http://drive.google.com/uc?id=1S8YgVXQAOkJfMJ7GGRzGlGX43schvHsz',
        map: map
    });
}