import 'package:flutter/material.dart';
import 'electrovanne.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() => runApp(MaterialApp(
      home: capteurSol(),
    ));

class capteurSol extends StatelessWidget {
  //BD
  List<Map<dynamic,dynamic>> electroList=[
    {'title':'humidite du sol', 'imgPath':'assets/images/goutC.png','number':'80%','max':'10','min':'5'},
    {'title':'temperature du sol', 'imgPath':'assets/images/flowerC.png','number':'20c°','max':'12','min':'6'},
    {'title':'teneur en eau', 'imgPath':'assets/images/humidité.jpg','number':'53%','max':'14','min':'7'},
    {'title':'electro conductivite', 'imgPath':'assets/images/mobileC.png','number':'1.5mv','max':'18','min':'9'},


  ];

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
          for(var electItem in electroList)
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
                          electItem['title'],
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(
                          electItem[
                            'imgPath'
                          ]
                          ,
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 176.6, height: 80),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          electItem[
                            'number'
                          ],
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
                              showAlertDialog(context,electItem['max'],electItem['min'],electItem['title']);
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
                            onPressed: () {  showAlertDialogH(context);},
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

showAlertDialog(BuildContext context,String max,String min,String paramName) {

  // set up the button


  // set up the AlertDialog
  bool valueCheck1 = false;
  AlertDialog alert = AlertDialog(
    title:Text("Parametres de $paramName",style: TextStyle(color: Colors.black,fontSize: 15)),
    content:SizedBox(height: 150,
      child: Column(
        children:<Widget>[
          TextFormField (
            initialValue: max,
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter maximum $paramName',
                hintText: 'Enter Max $paramName'
            ),
          ),
          TextFormField (
            initialValue: min,
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter minimum $paramName',
                hintText: 'Enter Min $paramName'
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
            onPressed: () {Navigator.pop(context); },
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
showAlertDialogH(BuildContext context) {
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
