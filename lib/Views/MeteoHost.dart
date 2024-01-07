import 'package:flutter/material.dart';
import 'package:meteo/Views/MeteosList.dart';

import 'MeteoPage.dart';

class MeteoHost extends StatefulWidget {
  const MeteoHost({super.key});

  @override
  State<MeteoHost> createState() => _MeteoHostState();
}

class _MeteoHostState extends State<MeteoHost> {
  int _selectedIndex = 0;
  String _pageName= "Météo";
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
        }else{
        _pageName= "Prévisions";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageName, style: TextStyle(fontSize: 20),),
        leading: IconButton(onPressed: () {  Navigator.pushNamed(context, '/'); }, icon: Icon(Icons.exit_to_app_outlined),) ,
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.lightBlueAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Poké'),

        ],
      ),

    );
  }
}
