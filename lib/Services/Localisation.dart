import 'package:location/location.dart';

final Location location = Location();
class LocalisationService{

  Future<PermissionStatus> requestLocationPermission() async {
    var status = await location.hasPermission();
    if (status == PermissionStatus.denied) {
      await location.requestPermission();
    }
    return status;
  }


}