import 'package:flutter/material.dart';
import '../main.dart';

final _formKey = GlobalKey<FormState>();
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
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Icon(
                Icons.lock_outline,
                size: 100,
              ),
              SizedBox(height: 50),
              Text(
                'Nous sommes ravis de vous revoir',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [

                    Center(
                        child: ElevatedButton(

                          onPressed: () async{

                           userInfo = await googleSignIn.signIn();

                           print({ "Nom" : userInfo?.displayName,
                             "Email" : userInfo?.email


                           });

                            Navigator.pushNamed(context, '/meteo');
                          },
                          style: ButtonStyle(),

                          child: Row(
                            children: [
                              Image(image : AssetImage('assets/images/chercher.png'), width: 20, height: 20,),
                              SizedBox(width: 8.0,),
                              Text('Continuer avec Google', style: TextStyle(fontSize: 20),)

                            ],
                          )
                          ,)



                    ),


                  ],
                )
              )



          ],),
        ),
      ),
    );
  }
}

