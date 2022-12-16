import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Irrigation', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Conditions actuelle",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "16°C             ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(
                          'assets/images/meteoH.png',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 350,
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Humidité\n",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/gouttedeauH.png',
                          width: 50,
                          height: 50,
                        ),
                        Text(
                          "38%",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 170,
                      height: 30,
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Temperature\n",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/low-temperature-icon.webp',
                          width: 50,
                          height: 50,
                        ),
                        Text(
                          "5°C",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 170,
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/ventH.jpg",
                          height: 50,
                          width: 50,
                        ),
                        Text(
                          "Vent",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 260,
                          height: 50,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("vent moyenne"),
                        SizedBox(
                          width: 50,
                        ),
                        Text("refal"),
                        SizedBox(
                          width: 50,
                        ),
                        Text("Direction"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("31KM/H"),
                        SizedBox(
                          width: 20,
                        ),
                        Text("55 KM/H"),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Nord ouest"),
                        Image.asset(
                          "assets/images/flech.png",
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 300,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
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
                          "Pluviometrie",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(
                          "assets/images/pluie.jpg",
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "    Jour",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "mois",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "annee",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "   1mm",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "   2mm",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "   3mm",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
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
