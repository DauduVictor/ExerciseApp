import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {

  static const String id = 'maps';

  final double? latitude;
  final double? longitude;

  const Maps({
    this.latitude,
    this.longitude,
    Key? key
  }) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {

  /// Variable to hold the current position of the user using lat and long
  CameraPosition? userPosition;

  /// Controller to hold the Google Maps
  Completer<GoogleMapController> _controller = Completer();

  /// Variable to hold the lat
  double? lat;

  /// Variable to hold the lon
  double? lon;

  /// Function to gets user location and up
  void _getLocation() {
    setState(() {
      lat = widget.latitude;
      lon = widget.longitude;
    });

    userPosition = CameraPosition(
      target: LatLng(lat!, lon!),
      zoom: 14.0,
    );

    print(userPosition);
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  // void _oncameraMove(CameraPosition position) {
  //   userPosition = position.target as CameraPosition?;
  // }

  @override
  void initState() {
    super.initState();
    _getLocation();
    print(widget.latitude);
    print(widget.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Container(
                  height: constraints.maxHeight,
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: userPosition!,
                    // markers: _markers,
                  ),
              ),
              Positioned(
                left: 30,
                top: 50,
                child: Material(
                  elevation: 7,
                  shadowColor: Colors.black,
                  shape: const CircleBorder(),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
