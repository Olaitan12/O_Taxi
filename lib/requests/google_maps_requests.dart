import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey ="AIzaSyA6ueZzIisTYS-jKwuiHxZKlK--kZomNZc";

class GoogleMapsServices{
  Future<String> getRouteCoordinates(LatLng l1, LatLngl2){
    String url ="https://maps.googleapis.com/maps/api/directions/json?origin=${l1.latitude},${l1.longitude}&destination=Universal+Studios+Hollywood&key=$apiKey";

  }
}