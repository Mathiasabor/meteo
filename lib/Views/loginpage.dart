import 'package:flutter/material.dart';
import 'package:meteo/Services/Authentification.dart';

import 'Components/Ressources/Images.dart';
import 'Components/Ressources/Text.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(

      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(LOGIN_PAGE_IMAGES),
              fit: BoxFit.fill
            )
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),

                Image(image: AssetImage(LOGIN_PAGE_ICON), width: 200, height: 200,),
                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.all(10.0),
                  width: double.infinity,
                  child: Column(
                    children: [

                      Text(LOGIN_LABEL, style: TextStyle(fontSize: 30,),

                      ),

                    ],
                  ),
                ),

                //SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [

                      Center(
                          child: ElevatedButton(


                            onPressed: () async{
                             userInfo = await AuthentificationServices().connecter();


                              Navigator.pushNamed(context, '/meteo');
                            },
                            style: ButtonStyle(),

                            child: SizedBox(
                              height: 50.0,
                              child: Row(

                                children: [
                                  Image(image : AssetImage(GOOGLE_ICON), width: 20, height: 20,),
                                  SizedBox(width: 8.0,),
                                  Text(GOOGLE_LOGIN_BUTTON_TEXT, style: TextStyle(fontSize: 20),)

                                ],
                              ),
                            )
                            ,)



                      ),


                    ],
                  )
                )



            ],),
          ),
        ),
      ),
    );
  }
}

