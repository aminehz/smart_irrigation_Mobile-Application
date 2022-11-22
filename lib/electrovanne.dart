import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
void main ()=> runApp(
    MaterialApp(
      home:electrovanne(),
    )
);
class electrovanne extends StatelessWidget{
  /*bool isSwitched = false;
  _State createState() => _State();*/
    @override
    Widget build (BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Smart Irrigation',
              style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,
          ),
        body:Column(

          children: <Widget>[
            /**1éer electro**/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Electrovanne 1",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),

                          /*Center(
                            child: Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                  print(isSwitched);
                                });
                              },
                              activeTrackColor: Colors.lightGreenAccent,
                              activeColor: Colors.green,
                            ),
                          )*/

                          SizedBox(
                            width: 250,
                            height: 80,

                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          TextButton (
                            onPressed: (){},
                            child:Text('Parametres', style: TextStyle(color: Colors.white)),
                            style: TextButton.styleFrom(backgroundColor: Colors.green),

                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],

            ),
            /**2émé electro **/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Electrovanne 2",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),

                          /*  Padding(
                            padding: EdgeInsets.all(20),
                            child: LiteRollingSwitch(
                              value: true,
                              textOn: "On",
                              textOff: "Off",
                              colorOn: Colors.greenAccent,
                              colorOff: Colors.redAccent,
                              iconOn: Icons.done,
                              iconOff: Icons.alarm_off,
                              textSize: 18.0,
                              onChanged: (bool position) {
                                print("The button is $position");
                              },

                            ),
                          ),*/

                          SizedBox(
                            width: 250,
                            height: 80,

                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          TextButton (
                            onPressed: (){},
                            child:Text('Parametres', style: TextStyle(color: Colors.white)),
                            style: TextButton.styleFrom(backgroundColor: Colors.green),

                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
            /**3eme electro**/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Electrovanne 3",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),

                          /*  Padding(
                            padding: EdgeInsets.all(20),
                            child: LiteRollingSwitch(
                              value: true,
                              textOn: "On",
                              textOff: "Off",
                              colorOn: Colors.greenAccent,
                              colorOff: Colors.redAccent,
                              iconOn: Icons.done,
                              iconOff: Icons.alarm_off,
                              textSize: 18.0,
                              onChanged: (bool position) {
                                print("The button is $position");
                              },

                            ),
                          ),*/

                          SizedBox(
                            width: 250,
                            height: 80,

                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          TextButton (
                            onPressed: (){},
                            child:Text('Parametres', style: TextStyle(color: Colors.white)),
                            style: TextButton.styleFrom(backgroundColor: Colors.green),

                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
            /**4eme electro**/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Electrovanne 4",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),

                          /*  Padding(
                            padding: EdgeInsets.all(20),
                            child: LiteRollingSwitch(
                              value: true,
                              textOn: "On",
                              textOff: "Off",
                              colorOn: Colors.greenAccent,
                              colorOff: Colors.redAccent,
                              iconOn: Icons.done,
                              iconOff: Icons.alarm_off,
                              textSize: 18.0,
                              onChanged: (bool position) {
                                print("The button is $position");
                              },

                            ),
                          ),*/

                          SizedBox(
                            width: 250,
                            height: 80,

                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          TextButton (
                            onPressed: (){},
                            child:Text('Parametres', style: TextStyle(color: Colors.white)),
                            style: TextButton.styleFrom(backgroundColor: Colors.green),

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
