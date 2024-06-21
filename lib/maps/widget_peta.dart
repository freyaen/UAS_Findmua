import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CityMapWidget extends StatefulWidget {
  @override
  _CityMapWidgetState createState() => _CityMapWidgetState();
}

class _CityMapWidgetState extends State<CityMapWidget> {
  MapController _mapController = MapController();
  LatLng _center =
      LatLng(-7.320795540279224, 112.78935309967193); // Default center (London)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salon Terdekat'),
      ),
      body: FlutterMap(
        options: MapOptions(initialCenter: _center, initialZoom: 15),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          CircleLayer(
            circles: [
              CircleMarker(
                point: LatLng(-7.320795540279224,
                    112.78935309967193), // center of 't Gooi
                radius: 50,
                useRadiusInMeter: true,
                color: Colors.pink,
                borderColor: const Color.fromARGB(255, 222, 148, 142),
                borderStrokeWidth: 2,
              ),
              CircleMarker(
                point: LatLng(
                    -7.317841516910861, 112.7930901808391), // center of 't Gooi
                radius: 50,
                useRadiusInMeter: true,
                color: Colors.pink,
                borderColor: const Color.fromARGB(255, 209, 129, 123),
                borderStrokeWidth: 2,
              ),
              CircleMarker(
                point: LatLng(-7.3192887514413725,
                    112.79665215427121), // center of 't Gooi
                radius: 50,
                useRadiusInMeter: true,
                color: Colors.pink,
                borderColor: const Color.fromARGB(255, 192, 123, 119),
                borderStrokeWidth: 2,
              )
            ],
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(-7.320693415760144, 112.7923177046731),
                child: Text(
                  'ATIEK BEAUTY SALON',
                ), // location of the marker
              ),
              Marker(
                point: LatLng(-7.317841516910861, 112.7930901808391),
                child: Text('MELANIA SALON'), // location of the marker
              ),
              Marker(
                point: LatLng(-7.3192887514413725, 112.79665215427121),
                child: Text('EU SALON'), // location of the marker
              ),
            ],
          ),
        ],
      ),
    );
  }
}
