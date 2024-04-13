import L from 'leaflet';
import 'leaflet/dist/leaflet.css';
import { useEffect } from 'react';

function MapPage() {
    useEffect(() => {
        const map = L.map('the-map', {
            center: L.latLng(19.4988265,-99.1422943),
            zoom: 15,
        });

        const key = '6pPQ47dfLry1bq0CCkrG';

        L.tileLayer(`https://api.maptiler.com/maps/streets-v2/{z}/{x}/{y}.png?key=${key}`, {
            tileSize: 512,
            zoomOffset: -1,
            minZoom: 1,
            attribution: "\u003ca href=\"https://www.maptiler.com/copyright/\" target=\"_blank\"\u003e\u0026copy; MapTiler\u003c/a\u003e \u003ca href=\"https://www.openstreetmap.org/copyright\" target=\"_blank\"\u003e\u0026copy; OpenStreetMap contributors\u003c/a\u003e",
            crossOrigin: true
        }).addTo(map);

        var greenIcon = L.icon({
            iconUrl: 'src/map-icon.png',
            iconSize:     [32, 32], // size of the icon
            shadowSize:   [50, 64], // size of the shadow
            iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
            shadowAnchor: [4, 62],  // the same for the shadow
            popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
        });

        L.marker([19.4988265,-99.1422943], {icon: greenIcon}).addTo(map);
    }, []);

    return (
        <div>
            <div className="text-center hero-content">
                <img className="image-bob" src="src/dumpster-hero.png" width="200px" />
                <div>
                    <h1 className="text-3xl font-bold">
                        Dorado Dumpster
                    </h1>
                    <p className="mt-4 text-lg">
                        Find your next treasure
                    </p>
                </div>
            </div>
            <div className="mx-8 map-container" style={{ display: 'relative' }}>
                <div id="the-map"></div>
            </div>
        </div>
    );
}

export default MapPage;
