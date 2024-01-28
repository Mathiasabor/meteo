import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../Models/data.dart';
import '../ViewModel/MeteoViewModel.dart';
import 'Components/Components.dart';
import 'Components/Ressources/Text.dart';



class MeteosList extends StatefulWidget {
  const MeteosList({super.key});

  @override
  State<MeteosList> createState() => _MeteosListState();
}

class _MeteosListState extends State<MeteosList> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();

    var meteoviewmodel = Provider.of<MeteoViewModel>(context);
    return  Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: FutureBuilder<Meteos>(
          future: meteoviewmodel.fdata(),
          builder: (context, snapshot) {

            if(snapshot.connectionState == ConnectionState.waiting)
            {
              return Center(
                child: CircularProgressIndicator(

                ),
              );
            }else if(snapshot.hasError)
            {
              return Text(NOT_AUTHORIZED);
            }

            return ListView.builder(
              itemCount: meteoviewmodel.meteos?.daily.length,
              itemBuilder: (context, int index){
                return MeteoByDay(meteoviewmodel.meteos!.daily[index], date.add(Duration(days: index)));
              },

            );

          }
      )
    );

  }


}


