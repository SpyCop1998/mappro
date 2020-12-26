import 'package:flutter/material.dart';
import 'ListPage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:hexcolor/hexcolor.dart';
class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);

  Location _location = Location();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        onMapCreated: _onMapCreated,
        myLocationEnabled: true,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: HexColor("#43CEA2"),
        child: Icon(Icons.my_location_sharp),
        onPressed: (){
          _location.onLocationChanged.listen((l) {
            mapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(target: LatLng(l.latitude, l.longitude), zoom: 15),
              ),
            );
          });
        },
      ),
    );
  }
}
//Lithion-green(#43CEA2) and (#D1FCFA)