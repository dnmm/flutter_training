// ignore_for_file: unused_field

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/dnm/extra_learning/google_map/location_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// follow this video : https://youtu.be/tfFByL7F-00
class CurrentLocationScreen extends StatefulWidget {
  const CurrentLocationScreen({Key? key}) : super(key: key);

  @override
  State<CurrentLocationScreen> createState() => CurrentLocationScreenState();
}

class CurrentLocationScreenState extends State<CurrentLocationScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  final TextEditingController _searchController = TextEditingController();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const Marker _kGooglePlexMarker = Marker(
      markerId: MarkerId('_kGooglePlex'),
      infoWindow: InfoWindow(title: 'Google Plex'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(37.42796133580664, -122.085749655962));

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static final Marker _kLakeMarker = Marker(
      markerId: const MarkerId('_kLakeMarker'),
      infoWindow: const InfoWindow(title: 'Google'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      position: const LatLng(37.43296265331129, -122.08832357078792));

  static const Polyline _kPolyline =
      Polyline(polylineId: PolylineId('_kPolyline'), points: [
    LatLng(37.42796133580664, -122.085749655962),
    LatLng(37.43296265331129, -122.08832357078792)
  ]);

  static const Polygon _kPolygon = Polygon(
    polygonId: PolygonId('_kPolygon'),
    points: [
      LatLng(37.42796133580664, -122.085749655962),
      LatLng(37.43296265331129, -122.08832357078792),
      LatLng(37.418, -122.092),
      LatLng(37.435, -122.092)
    ],
    strokeWidth: 5,
    fillColor: Colors.transparent,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Map"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: TextField(
                controller: _searchController,
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(hintText: 'Search by City'),
                onChanged: (value) {
                  print(value);
                },
              )),
              IconButton(
                  onPressed: () async {
                    var place = await LocationService()
                        .getPlace(_searchController.text);
                    _goToPlace(place);
                  },
                  icon: const Icon(Icons.search))
            ],
          ),
          Expanded(
            child: GoogleMap(
              mapType: MapType.hybrid,
              markers: {
                _kGooglePlexMarker, // _kLakeMarker
              },
              //for polyline line
              // polylines: {_kPolyline},
              // polygons: {_kPolygon},
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToPlace(Map<String, dynamic> place) async {
    final double lat = place['geometry']['location']['lat'];
    final double lng = place['geometry']['location']['lng'];
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: 12),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
