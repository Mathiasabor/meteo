import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Models/data.dart';

class MeteosList extends StatefulWidget {
  const MeteosList({super.key});

  @override
  State<MeteosList> createState() => _MeteosListState();
}

class _MeteosListState extends State<MeteosList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
          itemCount: Meteo.db.length,
        itemBuilder: (context, int index){
            return CardMeteo(Meteo.db[index]);
        },

      )
    );
  }

  Widget CardMeteo(Meteo meteo){
    return Card(
        child: Center(
          child: Column(
            children: [
              Image(image: AssetImage(meteo.image)),
              SizedBox(height: 20,),
              Text(meteo.daydate, style: TextStyle(fontSize: 20),),
              SizedBox(height: 20,),
              Text(meteo.temperature +"  "+meteo.nature, style: TextStyle(fontSize: 20),)
            ],
          ),
        )
    );
  }
}
