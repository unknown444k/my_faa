import 'package:firebase_core/firebase_core.dart';
import 'package:flut_startup/Responsive/Res_Layout.dart';
import 'package:flut_startup/Responsive/Webscreenlayout.dart';
import 'package:flut_startup/Responsive/dimension.dart';
import 'package:flut_startup/Utills/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


import 'Responsive/Mobilescreenlayout.dart';
import 'Screens/Loigin_Screen.dart';
void main(){
  runApp(MyApp());
  MyApp._initializefirebase() !;
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

static Future <FirebaseApp> ? _initializefirebase() async{

  
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
   FirebaseApp firebaseWeb = await Firebase.initializeApp
   
   (options: 
   const FirebaseOptions(apiKey: "AIzaSyAIqkAhcXdCxGCHs0vv9IqkGrYMn2iQn7s", 
   appId: "1:745107244082:web:9581e2ab5bf73d959d282b", 
   messagingSenderId: "745107244082", projectId: "insta-clo-faa3a.appspot.com"));

   return firebaseWeb;
  }
  else{
       FirebaseApp firebaseMob = await Firebase.initializeApp();
       return firebaseMob;


  }

}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instaa",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),

      //home: Res_Layout(Mobilescreenlayout: Mobilescreenlayout(), Webscreenlayout: Webscreenlayout(),),
       home: Loginscreen(),
      );

      
  }
}