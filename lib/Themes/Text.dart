
import 'package:flutter/material.dart';
import 'package:meteo/Views/Components/Ressources/Text.dart';

Widget dailyText (String text)
{
  return Text(text, style: TextStyle(fontSize: 15.0, color: Colors.white),);
}

Widget CurrentTemp(double temp)
{
  var tempCelcius = (temp - 273.15).toInt();
  return Text("$tempCelcius°C", style: TextStyle(fontSize: 30.0, color: Colors.white),);
}

Widget CurrentDescription(String text)
{
  return Text(text, style: TextStyle(fontSize: 20.0, color: Colors.white),);
}
Widget CurrentHumidity(int value)
{
  return Text("$HUMIDITY : $value", style: TextStyle(fontSize: 20.0, color: Colors.white),);
}

Widget CurrentTimezone(String text)
{
  return Text(text, style: TextStyle(fontSize: 20.0, color: Colors.white),);
}
Widget CurrentDate(DateTime date)
{
  return Text("${date.day}/${date.month}/${date.year}", style: TextStyle(fontSize: 20.0, color: Colors.white),);
}