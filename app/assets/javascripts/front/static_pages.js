// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/



	mapboxgl.accessToken = 'pk.eyJ1Ijoic2NobmliYmEiLCJhIjoiMWEwYWI4YTA3YTAwYjVhYTY1YWZiZGFiZDk1Zjk5NGUifQ.ueMMb8kMdWxrP5N4iqx67Q';
  	var map = new mapboxgl.Map({
	      container: 'map',
	      style: 'mapbox://styles/schnibba/civ72qg1c005t2is5sjhzngek',
	      center: [37.9965484, 55.7514117],
	  	  zoom: 15,
	  	  hash: false,
	  	  interactive: false
	  });


var geojson = [
  {
    type: 'Feature',
    geometry: {
      type: 'Point',
      coordinates: [37.9965484, 55.7514117]
    }
  },
  {
    type: 'Feature',
    geometry: {
      type: 'Point',
      coordinates: [55.7514117, 37.9965484]
    }
  }
];
map.on('load', function () {
    map.addSource("points", {
        "type": "geojson",
        "data": {
            "type": "FeatureCollection",
            "features": [{
                "type": "Feature",
                "geometry": {
                    "type": "Point",
                    "coordinates": [37.9975484, 55.7514117]
                },
                properties: {
                    "title": "AS Studio Lash",
                    "icon": "rocket",
                    "marker-color": "#3ca0d3",
                    "size": "large"

                }
            }
            ]
        }
    });

    map.addLayer({
        "id": "points",
        "type": "symbol",
        "source": "points",
        "layout": {
            "icon-image": "{icon}-15",
            "text-field": "{title}",
            "text-font": ["Open Sans Semibold", "Arial Unicode MS Bold"],
            "text-offset": [0, 0.6],
            "text-anchor": "top"
        }
    });
});

