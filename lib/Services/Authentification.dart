


import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meteo/Views/Components/Ressources/Text.dart';

import '../firebase_options.dart';

late GoogleSignIn googleSignIn ;
GoogleSignInAccount? userInfo;

class AuthentificationServices{


  final List<String> scopes = <String>[
    EMAIL,
  ];



  void initialise()
  {
    googleSignIn = GoogleSignIn(
      scopes: scopes,
    );

    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

  }

  Future<GoogleSignInAccount?> connecter()
  {
    return googleSignIn.signIn();
  }

  Future<GoogleSignInAccount?>  deconnecter()
  {
    return  googleSignIn.signOut();
  }


}