import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AppState with ChangeNotifier{
  static LatLng _initialPosition;
  LatLng _lastPosition = _initialPosition;

  TextEditingController locationController = TextEditingController();
  TextEditingController destinationController =TextEditingController();
  LatLng get initialPosition => _initialPosition;
  LatLng get lastPosition => _lastPosition;

  AppState(){
    _getUserLocation();
  }


  void _getUserLocation() async {
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    List<Placemark> placemark = await Geolocator().placemarkFromCoordinates(position.latitude, position.longitude);
      _initialPosition = LatLng(position.latitude, position.longitude);
      print("initial position is : ${_initialPosition.toString()}");
      locationController.text =placemark[0].name;
      notifyListeners();

  }
}