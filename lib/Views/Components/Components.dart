import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Models/data.dart';
import '../../Themes/Icons.dart';
import '../../Themes/Text.dart';
import 'Ressources/Text.dart';

Widget MeteoByHour(Hourly hourly,  DateTime hour)
{

  return Padding(
    padding: EdgeInsets.all(5.0),
    child: Container(
      width: 150.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(16.0),

        image: DecorationImage(
          filterQuality: FilterQuality.high,
            fit: BoxFit.contain,
            image: NetworkImage("https://openweathermap.org/img/wn/${hourly.weather[0].icon}@2x.png")
        ),

      ),

      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 10,
            child: Text("${(hourly.temp - 273.15).toInt()}°C", style: TextStyle(fontSize: 15.0, ),),

          ),

          Positioned(
            top: 0,
            left: 10,
            child: Text("$HDT : ${hourly.humidity}", style: TextStyle(fontSize: 15.0, ),),


          ),

          Positioned(
            bottom: 50,
            left: 50,
            child: Text("${hour.hour}:${hour.minute}", style: TextStyle(fontSize: 15.0, ),),

          ),

          Positioned(
            bottom: 0,

            right: 10,
            child: Text(hourly.weather[0].description, style: TextStyle(fontSize: 15.0,),),

          ),

        ],
      ),
    ),
  );
}

Widget MeteoInfoCurrent(Meteos? meteos)
{
  DateTime date = DateTime.now();
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Row(
              children: [
                CurrentTemp(meteos!.current.temp),
                SizedBox(width: 12.0,),
                CurrentDescription(meteos.current.weather[0].description),

              ],
            ),

            SizedBox(height: 12.0,),
            CurrentDate(date)
          ],
        ),
      ),

      Center(
        child: CurrentIcon(meteos.current.weather[0].icon),
      ),

      Center(
        child: CurrentTimezone(meteos.timezone),
      ),

      Center(
        child: CurrentHumidity(meteos.current.humidity),
      )


    ],
  );
}


Widget MeteoByDay(Daily daily, DateTime date)
{

  return Padding(
    padding: EdgeInsets.all(5.0),
    child: Container(
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(16.0),


        image: DecorationImage(
            fit: BoxFit.contain,
            image: NetworkImage("https://openweathermap.org/img/wn/${daily.weather[0].icon}@2x.png")
        ),

      ),

      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 10,
            child: Text("${(daily.temp.day - 273.15).toInt()}°C", style: TextStyle(fontSize: 15.0),),


          ),

          Positioned(
            top: 0,
            left: 10,
            child: Text("${date.day}/${date.month}/${date.year}", style: TextStyle(fontSize: 15.0),),


          ),





          Positioned(
            bottom: 0,
            right: 10,
            child: Text(daily.summary, style: TextStyle(fontSize: 10.0),),


          ),


        ],
      ),
    ),
  );
}

