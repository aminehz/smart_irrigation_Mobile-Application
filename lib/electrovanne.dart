import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:flutter_switch/flutter_switch.dart';
void main ()=> runApp(
    MaterialApp(
      home:electrovanne(),
    )
);

class electrovanne extends StatefulWidget{
  @override
  _electrovanne createState() => _electrovanne();
}




class _electrovanne extends State<electrovanne>{
  bool electro1 =true,electro2 =false,electro3 =true,electro4 =false;
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
                        SizedBox(
                          width:80 ,
                        ),
                        FlutterSwitch(
                          width: 100.0,
                          height:40.0,
                          valueFontSize:13.0,
                          toggleSize:25.0,
                          value:electro1,
                          activeColor: Colors.green,
                          borderRadius:30.0,
                          padding:8.0,
                          showOnOff:true,
                          onToggle:(val){
                            setState((){
                              electro1=val;
                            });
                          },
                        ),


                          SizedBox(
                            width: 86,
                            height: 80,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ElevatedButton(
                            child: Text('Parametres'),
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
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
                          SizedBox(
                            width:80 ,
                          ),
                          FlutterSwitch(
                            width: 100.0,
                            height:40.0,
                            valueFontSize:13.0,
                            toggleSize:25.0,
                            value:electro2,
                            activeColor: Colors.green,
                            borderRadius:30.0,
                            padding:8.0,
                            showOnOff:true,
                            onToggle:(val){
                              setState((){
                                electro2=val;
                              });
                            },
                          ),


                          SizedBox(
                            width: 86,
                            height: 80,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ElevatedButton(
                            child: Text('Parametres'),
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
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
                          SizedBox(
                            width:80 ,
                          ),
                          FlutterSwitch(
                            width: 100.0,
                            height:40.0,
                            valueFontSize:13.0,
                            toggleSize:25.0,
                            value:electro3,
                            activeColor: Colors.green,
                            borderRadius:30.0,
                            padding:8.0,
                            showOnOff:true,
                            onToggle:(val){
                              setState((){
                                electro3=val;
                              });
                            },
                          ),


                          SizedBox(
                            width: 86,
                            height: 80,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ElevatedButton(
                            child: Text('Parametres'),
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
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

                          SizedBox(
                            width:80 ,
                          ),
                          FlutterSwitch(
                            width: 100.0,
                            height:40.0,
                            valueFontSize:13.0,
                            toggleSize:25.0,
                            value:electro4,
                            activeColor: Colors.green,
                            borderRadius:30.0,
                            padding:8.0,
                            showOnOff:true,
                            onToggle:(val){
                              setState((){
                                electro4=val;
                              });
                            },
                          ),


                          SizedBox(
                            width: 86,
                            height: 80,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ElevatedButton(
                            child: Text('Parametres'),
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
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

showAlertDialog(BuildContext context) {
  // set up the AlertDialog
  bool valueCheck1 = false;
  AlertDialog alert = AlertDialog(
    title:Text("Parametres de l'humidité",style: TextStyle(color: Colors.black,fontSize: 15)),
    content:SizedBox(height: 100,
    child: Column(
      children:<Widget>[
        TextField (
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Enter Electrovanne Name',
              hintText: 'Enter Your Name'
          ),
        ),
        Text("Irrigation auto"),


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
              onPressed: () { Navigator.pop(context);},
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





