import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:location/location.dart';

import '../Models/data.dart';
import 'package:http/http.dart' as http;

import '../Services/Localisation.dart';
import '../Views/Components/Ressources/Text.dart';


LocationData? _locationData;

LocationData? get locationData => _locationData ;

class MeteoViewModel extends ChangeNotifier{

  Meteos? _meteo;

  Meteos? get meteos => _meteo;




  Future<LocationData?> getCurrentLocation() async {

    try {
      _locationData = await location.getLocation();

    } catch (e) {

      rethrow;
    }
    return _locationData;
  }

  Future<Meteos> fdata() async{
    await getCurrentLocation();
    Uri apiurl = Uri.parse("https://api.openweathermap.org/data/3.0/onecall?lat=${locationData?.latitude}&lon=${locationData?.longitude}&appid=${APIKEY}");
    final response = await http.get(apiurl);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      Meteos meteos = Meteos.fromJson(data);
      _meteo = meteos;


      return meteos;
    } else {

  throw Exception('Échec de la requête avec le code : ${response.statusCode}');
  }

  }


}