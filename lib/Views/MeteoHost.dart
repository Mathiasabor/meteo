import 'package:flutter/material.dart';
import 'package:meteo/Views/MeteosList.dart';

import '../main.dart';
import 'MeteoPage.dart';

class MeteoHost extends StatefulWidget {
  const MeteoHost({super.key});

  @override
  State<MeteoHost> createState() => _MeteoHostState();
}

class _MeteoHostState extends State<MeteoHost> {
  int _selectedIndex = 0;
  String _pageName= "Météo";
  String _userName = userInfo!.displayName!;
  List<Widget> pages = <Widget>[
    const MeteoPage(),
    const MeteosList(),
  ];

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
      if(_selectedIndex == 0)
        {
          _pageName= "Météo";
          _userName = userInfo!.displayName!;
        }else{
        _pageName= "Prévisions";
        _userName = "";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
           Row(
            children: [
              Text(_pageName, style: TextStyle(fontSize: 20),),
              SizedBox(width: 10,),
              Text(_userName, style: TextStyle(fontSize: 15), overflow: TextOverflow.ellipsis),
            ],
          ),


        leading: IconButton(onPressed: () {

          googleSignIn.signOut();
          Navigator.pushNamed(context, '/');

          }, icon: Icon(Icons.exit_to_app_outlined),) ,
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.lightBlueAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Météo'),
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Prévisions'),

        ],
      ),


    );
  }
}
