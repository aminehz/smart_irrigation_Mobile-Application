import 'package:flutter/material.dart';
import 'package:smart_irrigation/electrovanne.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() => runApp(MaterialApp(
      home: capteurSol(),
    ));

class capteurSol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Capteur du Sol', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          /** first row **/
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Humidité du sol',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(
                          "assets/images/goutC.png",
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 180, height: 80),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '80%',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[




                          ElevatedButton(
                            child: Text('Parametres'),
                            onPressed: () {
                              showAlertDialog1(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),


                          ),
                  SizedBox(
                    width: 10,
                    height: 50,
                  ),
                          TextButton(
                            onPressed: () {  showAlertDialogH1(context);},
                            child: Text('Historique',
                                style: TextStyle(color: Colors.white)),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.green),
                          ),



                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          /** second row **/
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Temperature du sol',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(
                          "assets/images/flowerC.png",
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 150, height: 80),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '20°',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
      Row(
        children: <Widget>[




          ElevatedButton(
            child: Text('Parametres'),
            onPressed: () {
              showAlertDialog1(context);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),


          ),
          SizedBox(
            width: 10,
            height: 50,
          ),
          TextButton(
            onPressed: () {
              showAlertDialogH2(context);
            },
            child: Text('Historique',
                style: TextStyle(color: Colors.white)),
            style: TextButton.styleFrom(
                backgroundColor: Colors.green),
          ),



        ],
      ),

                  ],
                ),
              ),
            ],
          ),
          /** third row **/
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Teneur en eau',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(
                          "assets/images/humidité.jpg",
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 180, height: 80),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '53%',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[




                        ElevatedButton(
                          child: Text('Parametres'),
                          onPressed: () {
                            showAlertDialog1(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),


                        ),
                        SizedBox(
                          width: 10,
                          height: 50,
                        ),
                        TextButton(
                          onPressed: () {
                            showAlertDialogH3(context);
                          },
                          child: Text('Historique',
                              style: TextStyle(color: Colors.white)),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green),
                        ),



                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          /** fourth row **/
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Electro conductivité',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(
                          "assets/images/mobileC.png",
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 130, height: 50),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '1.5mV',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[




                        ElevatedButton(
                          child: Text('Parametres'),
                          onPressed: () {
                            showAlertDialog1(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),


                        ),
                        SizedBox(
                          width: 10,
                          height: 50,
                        ),
                        TextButton(
                          onPressed: () {
                            showAlertDialogH4(context);
                          },
                          child: Text('Historique',
                              style: TextStyle(color: Colors.white)),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green),
                        ),



                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

showAlertDialog1(BuildContext context) {

  // set up the button


  // set up the AlertDialog
  bool valueCheck1 = false;
  AlertDialog alert = AlertDialog(
    title:Text("Parametres de l'humidité",style: TextStyle(color: Colors.black,fontSize: 15)),
    content:SizedBox(height: 150,
      child: Column(
        children:<Widget>[
          TextField (
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter maximum humidité',
                hintText: 'Enter Max Humedité'
            ),
          ),
          TextField (
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter minimum humidité',
                hintText: 'Enter Min Humedité'
            ),
          ),
        ],

      ),
    ),

    actions:[

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
          TextButton(
            child: Text("Annuler",
                style: TextStyle(color: Colors.white)),
            onPressed: () { },
            style: TextButton.styleFrom(
                backgroundColor: Colors.green),
          ),
          SizedBox(width: 40),
          TextButton(
            child: Text("Valider",style: TextStyle(color: Colors.white)),
            onPressed: () { },
            style: TextButton.styleFrom(
                backgroundColor: Colors.green),
          ),
        ],
      ),
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

// btn  2
showAlertDialog2(BuildContext context) {

  // set up the button

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title:Text("Parametres de l'humidité",style: TextStyle(color: Colors.black,fontSize: 15)),
    content:SizedBox(height: 150,
      child: Column(
        children:<Widget>[
          TextField (
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter maximum humidité',
                hintText: 'Enter Max Humedité'
            ),
          ),
          TextField (
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter minimum humidité',
                hintText: 'Enter Min Humedité'
            ),
          ),
        ],

      ),
    ),

    actions:[

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
          TextButton(
            child: Text("Annuler",
                style: TextStyle(color: Colors.white)),
            onPressed: () { },
            style: TextButton.styleFrom(
                backgroundColor: Colors.green),
          ),
          SizedBox(width: 40),
          TextButton(
            child: Text("Valider",style: TextStyle(color: Colors.white)),
            onPressed: () { },
            style: TextButton.styleFrom(
                backgroundColor: Colors.green),
          ),
        ],
      ),
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
//btn3
showAlertDialog3(BuildContext context) {

  // set up the button


  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title:Text("Parametres de l'humidité",style: TextStyle(color: Colors.black,fontSize: 15)),
    content:SizedBox(height: 150,
      child: Column(
        children:<Widget>[
          TextField (
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter maximum humidité',
                hintText: 'Enter Max Humedité'
            ),
          ),
          TextField (
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter minimum humidité',
                hintText: 'Enter Min Humedité'
            ),
          ),
        ],

      ),
    ),

    actions:[

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
          TextButton(
            child: Text("Annuler",
                style: TextStyle(color: Colors.white)),
            onPressed: () { },
            style: TextButton.styleFrom(
                backgroundColor: Colors.green),
          ),
          SizedBox(width: 40),
          TextButton(
            child: Text("Valider",style: TextStyle(color: Colors.white)),
            onPressed: () { },
            style: TextButton.styleFrom(
                backgroundColor: Colors.green),
          ),
        ],
      ),
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
//btn4
showAlertDialog4(BuildContext context) {

  // set up the button


  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title:Text("Parametres de l'humidité",style: TextStyle(color: Colors.black,fontSize: 15)),
    content:SizedBox(height: 150,
      child: Column(
        children:<Widget>[
          TextField (
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter maximum humidité',
                hintText: 'Enter Max Humedité'
            ),
          ),
          TextField (
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter minimum humidité',
                hintText: 'Enter Min Humedité'
            ),
          ),
        ],

      ),
    ),

    actions:[

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
          TextButton(
            child: Text("Annuler",
                style: TextStyle(color: Colors.white)),
            onPressed: () { },
            style: TextButton.styleFrom(
                backgroundColor: Colors.green),
          ),
          SizedBox(width: 40),
          TextButton(
            child: Text("Valider",style: TextStyle(color: Colors.white)),
            onPressed: () { },
            style: TextButton.styleFrom(
                backgroundColor: Colors.green),
          ),
        ],
      ),
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



//// LES Btn Historique:
showAlertDialogH1(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {Navigator.pop(context);},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title:
    Text("Historique du Humidité du Sol",style: TextStyle(color: Colors.black,fontSize: 15)),


    //Text("My title"),
    content:

    StatefulBuilder(builder: (BuildContext alertContext, StateSetter alertSetState) {
      return SizedBox(width: double.maxFinite, child: Chart());
    }),
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


showAlertDialogH2(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {Navigator.pop(context);},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title:
    Text("Historique du Humidité du Sol",style: TextStyle(color: Colors.black,fontSize: 15)),


    //Text("My title"),
    content:

    StatefulBuilder(builder: (BuildContext alertContext, StateSetter alertSetState) {
      return SizedBox(width: double.maxFinite, child: Chart());
    }),
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



showAlertDialogH3(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {Navigator.pop(context);},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title:
    Text("Historique du Humidité du Sol",style: TextStyle(color: Colors.black,fontSize: 15)),


    //Text("My title"),
    content:

    StatefulBuilder(builder: (BuildContext alertContext, StateSetter alertSetState) {
      return SizedBox(width: double.maxFinite, child: Chart());
    }),
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


showAlertDialogH4(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {Navigator.pop(context);},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title:
    Text("Historique du Humidité du Sol",style: TextStyle(color: Colors.black,fontSize: 15)),


    //Text("My title"),
    content:

    StatefulBuilder(builder: (BuildContext alertContext, StateSetter alertSetState) {
      return SizedBox(width: double.maxFinite, child: Chart());
    }),
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
    final List<ChartData>
    chartData=[
      ChartData(3,9),
      ChartData(5,10),
      ChartData(10,20),
      ChartData(15,25),
      ChartData(30,40)

    ];


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: SfCartesianChart(
              title: ChartTitle(text:""),
              legend: Legend(isVisible: true),
              series:<ChartSeries>[
                AreaSeries<ChartData,int>(
                  dataSource: chartData,
                  xValueMapper: (ChartData data,_)=>data.x,
                  yValueMapper: (ChartData data,_)=>data.y,
                  color: Colors.green,
                  borderColor: Colors.grey,
                  borderWidth: 2,

                ),

              ],

            ),
          ),
        ],
      ),
    );
  }
}

class ChartData{
  ChartData(this.x,this.y);
  final int x;
  final double y;
}
