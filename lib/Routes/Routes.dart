import 'package:flutter/cupertino.dart';

import '../Views/MeteoPage.dart';
import '../Views/MeteosList.dart';

class Routes{

 static List<Widget> Hostpages = <Widget>[
    const MeteoPage(),
    const MeteosList(),
  ];
}