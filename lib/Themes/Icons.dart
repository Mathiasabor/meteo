import 'package:flutter/cupertino.dart';

Widget CurrentIcon( String icon)
{
  return Container(
      width: 300,
      height: 200.0,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16.0),


  image: DecorationImage(
  fit: BoxFit.contain,
  image: NetworkImage("https://openweathermap.org/img/wn/$icon@2x.png")
  ),

  ),
  );
  }