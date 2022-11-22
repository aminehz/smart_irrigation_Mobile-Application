import 'package:flutter/material.dart';
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
              Column(
                children:<Widget> [
                  OutlinedButton(
                    onPressed: () {
                      debugPrint('Received click');
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
