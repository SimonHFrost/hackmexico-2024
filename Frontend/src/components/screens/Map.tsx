import L from 'leaflet';
import 'leaflet/dist/leaflet.css';
import { useEffect } from 'react';

function MapPage() {
    useEffect(() => {
        const map = L.map('the-map', {
            center: L.latLng(19.500568, -99.141028),
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
            <div className="m-8 map-container" style={{ display: 'relative' }}>
                <h1>Map Page</h1>
                <div id="the-map"></div>
            </div>
        </div>
    );
}

export default MapPage;
