import 'package:flutter/material.dart';

import 'PageNav.dart';
const List<String> list = <String>['Sousse', 'Monastir', 'Tunis', 'Sfax'];
void main() =>runApp(
    MaterialApp(
      home: forum(),
    )
);
class forum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Irrigation',
            style: TextStyle(color: Colors.white)
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children:<Widget> [
              Column(
                children:<Widget> [

                ],

              ),
              Row(
                children:<Widget> [
                  OutlinedButton(
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    child: const Text('Choisir votre region',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  SizedBox(width: 50,height: 20),
                  OutlinedButton(
                    onPressed: () {

                    },
                    child: const Text('Se Désabonner',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title:
    Text("Demande d'adhésion",style: TextStyle(color: Colors.black,fontSize: 15)),


    //Text("My title"),
    content:

    StatefulBuilder(builder: (BuildContext alertContext, StateSetter alertSetState) {
      return SizedBox(width: double.maxFinite, child: ChoseZone());
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


class ChoseZone extends StatefulWidget {
  const ChoseZone({ super.key });

  @override
  State<ChoseZone> createState() => _ChoseZoneState();
}

class _ChoseZoneState extends State<ChoseZone> {
  //initial selected value:
  String dropdownvalue="Tunis";
  var items=['Tunis','Ariana','Manouba','Ben Arous','Zaghouan','Nabeul','Jendouba','Béja','Kef','Siliana','Sousse','Monastir','Mahdia','Kairouan','Kasserine','Sidi Bouzid','Sfax','Gabès', 'Médenine','Tataouine','Gafsa', 'Tozeur','Kébili'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton(

                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ],
            ),

          ),

        ],

      ),
    );
  }
}






