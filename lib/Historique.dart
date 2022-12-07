import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
void main() => runApp(Historique());

class Historique extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Historique',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Historique',style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.green,
          ),
          body: MyLayout()),
    );
  }
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),



      ),

    );
  }
}

// replace this function with the examples above
showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () { },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content:Chart(),



    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:Column(
        children:<Widget> [
          Container(

            child: SfCartesianChart(),
          ),



        ],
      ),


    );
  }
}
