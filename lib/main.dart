import 'package:flutter/material.dart';
import 'Home.dart';
import 'capteurSol.dart';
import 'electrovanne.dart';
import 'forum.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    /*initialRoute: "/home",
      routes: {
      "/home":(context)=> Home(),
        "/capteur":(context)=> capteurSol(),
        "/electrovanne":(context)=>electrovanne(),
        "/forum":(context)=>forum(),
      },*/

      home:Home(),
    );
  }
}
/* -navigation
   -little screen
 */