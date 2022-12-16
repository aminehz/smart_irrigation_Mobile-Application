import 'package:flutter/material.dart';
import 'package:smart_irrigation/PageNav.dart';
import 'package:smart_irrigation/Login.dart';
import 'Home.dart';
import 'capteurSol.dart';
import 'electrovanne.dart';
import 'forum.dart';
import 'PageNav.dart';
import 'Login.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    // home:PageNav(activePage: 0,),
      home:Login(),
    );
  }
}
