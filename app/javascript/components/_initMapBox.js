import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('container-map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: "container-map",
      style: 'mapbox://styles/valentin2700/ckw516dpq0tl515t6ud1acmk2'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(markers)
    markers.forEach((marker) => {
      const newMarker = new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .addTo(map);
      newMarker._element.id = `marker-${marker.id}`;

    });

    const fitMapToMarkers = (map, markers) => {
      const bounds = new mapboxgl.LngLatBounds();
      markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
      map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
    };
    fitMapToMarkers(map, markers);
  }
};


export { initMapbox };
