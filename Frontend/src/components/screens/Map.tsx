import L, { map } from 'leaflet';
import 'leaflet/dist/leaflet.css';
import { useEffect } from 'react';
import axios from 'axios';

function MapPage() {
    var map: L.Map;

    function addIcon(map: L.Map, latLng: Array<number>) {
        var icon = L.icon({
            iconUrl: 'src/map-icon.png',
            iconSize: [32, 32], // size of the icon
            shadowSize: [50, 64], // size of the shadow
            iconAnchor: [22, 94], // point of the icon which will correspond to marker's location
            shadowAnchor: [4, 62],  // the same for the shadow
            popupAnchor: [-3, -76] // point from which the popup should open relative to the iconAnchor
        });

        L.marker([latLng[0], latLng[1]], { icon: icon }).addTo(map);
    }

    useEffect(() => {
        map = L.map('the-map', {
            center: L.latLng(19.4988265, -99.1422943),
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

        var dummyData = [
            [19.4988265, -99.1422943],
            [19.4988465, -99.1423943],
            [19.4928265, -99.1432943],
        ];

        // fetchData().then(something => {
        //     if (!something.latLons) {
        //         dummyData = latLons;
        //     }

        //     dummyData.forEach(element => {
        //         addIcon(map, [element[0], element[1]]);
        //     });
        // });

        dummyData.forEach(latLon => {
            addIcon(map, latLon);
        })
    }, []);

    const fetchData = async () => {
        try {
            const response = await axios.get('https://api.example.com/data');
            console.log('Data fetched:', response.data);
        } catch (error) {
            console.error('Error fetching data:', error);
        }
    };

    const sendData = async () => {
        try {
            const location = map.getCenter();
            console.log(location);
            const response = await axios.post('https://api.example.com/data', {
                lat: location.lat,
                lng: location.lng,
            });
        } catch (error) {
            console.error('Error');
        }
    }

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
            <div className="m-8 text-center">
                <button className="btn" onClick={() => { sendData() }}>
                Add dumpster location</button>
            </div>
        </div>
    );
}

export default MapPage;
