import 'package:flutter/material.dart';
void main ()=> runApp(
    MaterialApp(
      home:capteurSol(),
    )
);

class capteurSol extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Capteur du Sol',
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,

      ),
      body: Column(
        children:<Widget> [
          /** first row **/
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [
              Card(
                child: Column(
                  children:<Widget>[
                    Row(
                      children: <Widget>[
                        Text('Humidité du sol',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYpwcDQ1RoUhfk3O5b1tYJkegmZCPruDK5FA&usqp=CAU",
                          width: 50,
                          height: 50,
                        ),
                      SizedBox(width:180, height:80),
                      ],
                    ),
                    Row(
                      children:<Widget>[
                        Text('80%',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[

                        Container(
                          margin:EdgeInsets.fromLTRB(100.0,10.0,0.0,0.0),
                          child: OutlinedButton(
                          onPressed: () {
                            debugPrint('Received click');
                                                 },
                               child: const Text('Click Me',
                               style: TextStyle(color: Colors.green),
                               ),
                                 ),
                        ),

                        TextButton (
                          onPressed: (){},
                          child:Text('Historique', style: TextStyle(color: Colors.white)),
                          style: TextButton.styleFrom(backgroundColor: Colors.green),

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
            children:<Widget>[
              Card(
                child: Column(
                  children:<Widget>[
                    Row(
                      children: <Widget>[
                        Text('Temperature du sol',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Image.network("https://cdn-icons-png.flaticon.com/512/1555/1555571.png",
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width:150, height:80),
                      ],
                    ),
                    Row(
                      children:<Widget>[
                        Text('20°',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[

                        Container(
                          margin:EdgeInsets.fromLTRB(100.0,10.0,0.0,0.0),
                          child: OutlinedButton(
                            onPressed: () {
                              debugPrint('Received click');
                            },
                            child: const Text('Click Me',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ),

                        TextButton (
                          onPressed: (){},
                          child:Text('Historique', style: TextStyle(color: Colors.white)),
                          style: TextButton.styleFrom(backgroundColor: Colors.green),

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
                  children:<Widget>[
                    Row(
                      children: <Widget>[
                        Text('Teneur en eau',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Image.network("https://thumbs.dreamstime.com/b/surveillance-de-l-humidit%C3%A9-du-sol-ic%C3%B4ne-lin%C3%A9aire-noire-mesure-pr%C3%A9cise-capteur-temp%C3%A9rature-la-teneur-en-eau-volumique-214646442.jpg",
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width:180, height:80),
                      ],
                    ),
                    Row(
                      children:<Widget>[
                        Text('53%',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[

                        Container(
                          margin:EdgeInsets.fromLTRB(100.0,10.0,0.0,0.0),
                          child: OutlinedButton(
                            onPressed: () {
                              debugPrint('Received click');
                            },
                            child: const Text('Click Me',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ),

                        TextButton (
                          onPressed: (){},
                          child:Text('Historique', style: TextStyle(color: Colors.white)),
                          style: TextButton.styleFrom(backgroundColor: Colors.green),

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
                  children:<Widget>[
                    Row(
                      children: <Widget>[
                        Text('Electro conductivité',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Image.network("http://www.agri40.ma/images/capteur-2.png",
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width:130, height:50),
                      ],
                    ),
                    Row(
                      children:<Widget>[
                        Text('1.5mV',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[

                        Container(
                          margin:EdgeInsets.fromLTRB(100.0,10.0,0.0,0.0),
                          child: OutlinedButton(
                            onPressed: () {
                              debugPrint('Received click');
                            },
                            child: const Text('Click Me',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ),

                        TextButton (
                          onPressed: (){},
                          child:Text('Historique', style: TextStyle(color: Colors.white)),
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









