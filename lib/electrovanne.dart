import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:http/http.dart' as http;

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


  var electroList;

  @override
  void initState(){
    super.initState();
    fetchElectrovanne();
  }
  Future<void> fetchElectrovanne() async {

    final response= await http.get(Uri.parse('http://192.168.1.2:3000/electrovanne'));
    if(response.statusCode== 200){
      setState(() {
        electroList= json.decode(response.body) as List<dynamic>;
      }
      );
    } else{
      throw Exception("Failed to get electrovanne data");
    }
  }


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
                          Text(electItem[
                            'nom'
                          ],
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
                          value:electItem[
                            'status'
                          ],
                          activeColor: Colors.green,
                          borderRadius:30.0,
                          padding:8.0,
                          showOnOff:true,
                          onToggle:(val){
                            setState((){
                              electItem['status']=val;
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
                              showAlertDialog(context,electItem['nom'],electItem['_id']);
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

showAlertDialog(BuildContext context,String electroName,String electroId) {
  // set up the AlertDialog
  bool valueCheck1 = false;
  AlertDialog alert = AlertDialog(
    title:Text("Parametres de $electroName ",style: TextStyle(color: Colors.black,fontSize: 15)),
    content:SizedBox(height: 100,
    child: Column(
      children:<Widget>[
        TextFormField(
          onChanged: (newVal){

            electroName=newVal;

          },
          initialValue:electroName,
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
              onPressed: () {print(electroName);
                  Navigator.pop(context);
                },
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





