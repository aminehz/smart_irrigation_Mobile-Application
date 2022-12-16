import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
void main ()=> runApp(
    MaterialApp(
      home:electrovanne(),
    )
);
class electrovanne extends StatelessWidget{
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
                            width: 250,
                            height: 80,
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
                            width: 250,
                            height: 80,

                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ElevatedButton(
                            child: Text('Parametres'),
                            onPressed: () {
                              showAlertDialog2(context);
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
                            width: 250,
                            height: 80,

                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ElevatedButton(
                            child: Text('Parametres'),
                            onPressed: () {
                              showAlertDialog3(context);
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
                          ElevatedButton(
                            child: Text('Parametres'),
                            onPressed: () {
                              showAlertDialog4(context);
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

showAlertDialog1(BuildContext context) {
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
  // set up the AlertDialog
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






