
import 'package:flutter/material.dart';
import 'package:meteo/ViewModel/MeteoViewModel.dart';
import 'package:provider/provider.dart';
import '../Models/data.dart';
import 'Components/Components.dart';
import 'Components/Ressources/Text.dart';


class MeteoPage extends StatefulWidget {
  const MeteoPage({super.key});

  @override
  State<MeteoPage> createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {

  int currentIndex = 0;

  @override
  void initState()
  {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {

    DateTime dateDeBase = DateTime.now();

    var meteoviewmodel = Provider.of<MeteoViewModel>(context);

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: FutureBuilder<Meteos>(
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

              return Column(
                children: [

                  MeteoInfoCurrent(meteoviewmodel.meteos),


                  Text(DANS_LA_JOURNEE,style: TextStyle(fontSize: 25.0, color: Colors.white)),

                  Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: meteoviewmodel.meteos?.hourly.length,
                        itemBuilder: (BuildContext context, int index){
                        return MeteoByHour(meteoviewmodel.meteos!.hourly[index], dateDeBase.add(Duration(hours: index)));
                        }
                      )

                  )

                ],
              );
            }
          ),
        ),
    );
  }


}
