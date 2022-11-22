import 'package:flutter/material.dart';
void main() =>runApp(
    MaterialApp(
      home: Home(),
    )
);


class Home extends StatelessWidget{





  @override
  Widget build(BuildContext context){
   /* int _currentIndex=0;
    final tabs =[
      Navigator.pushNamed(context, "/home"),
      Navigator.pushNamed(context, "/capteur"),
      Navigator.pushNamed(context, "/electrovanne"),

    ];*/
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Irrigation',
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,

      ),
      body: Column(











        children: <Widget>[




             /* BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Color(0xFF6200EE),
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white.withOpacity(.60),
                selectedFontSize: 14,
                unselectedFontSize: 14,
                currentIndex:_currentIndex ,
                onTap: (value){

                },


                items: [
                  BottomNavigationBarItem(

                    label:'Favorites',
                    icon: Icon(Icons.favorite),
                  ),
                  BottomNavigationBarItem(
                    label:'Music',
                    icon: Icon(Icons.music_note),
                  ),
                  BottomNavigationBarItem(
                    label:'Places',
                    icon: Icon(Icons.location_on),
                  ),
                  BottomNavigationBarItem(
                    label:'News',
                    icon: Icon(Icons.library_books),
                  ),
                ],

              ),*/






          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Text("Conditions actuelle",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: <Widget>[

                        Text("16°C             ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,

                          ),
                        ),

                        Image.network("https://cdn-icons-png.flaticon.com/512/3942/3942094.png",
                          width: 50,
                          height: 50,

                        ),

                      ],
                    ),


                    SizedBox(
                      width:350,
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
            children:<Widget>[
              Card(
                child:Column(
                  children: <Widget>[
                    Text("Humidité\n",
                      style:TextStyle(
                        fontSize: 18,
                        color: Colors.black,


                      ),
                    ),
                    Row(
                      children:<Widget>[

                        Image.network("https://cdn-icons-png.flaticon.com/512/777/777610.png",
                          width:50,
                          height: 50,
                        ),
                        Text("38%",
                          style:TextStyle(
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
                child:Column(
                  children: <Widget>[
                    Text("Temperature\n",
                      style:TextStyle(
                        fontSize: 18,
                        color: Colors.black,


                      ),
                    ),
                    Row(
                      children:<Widget>[

                        Image.network("https://uxwing.com/wp-content/themes/uxwing/download/medical-science-lab/low-temperature-icon.png",
                          width:50,
                          height: 50,
                        ),
                        Text("5°C",
                          style:TextStyle(
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
                child:Column(
                  children:<Widget>[
                    Row(
                      children:<Widget> [
                        Image.network("https://media.istockphoto.com/id/1309043223/vector/windsock.jpg?s=612x612&w=0&k=20&c=cC0bE252J06HHsUGGHjbKVm3E4sU-vrDSJrgqtjMlo4=",
                          height: 50,
                          width: 50,
                        ),
                        Text("Vent",
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
                      children:<Widget>[
                        Text("vent moyenne"),
                        SizedBox(
                          width:50,
                        ),
                        Text("refal"),
                        SizedBox(
                          width: 50,
                        ),
                        Text("Direction"),
                      ],
                    ),
                    Row(
                      children:<Widget> [
                        Text("31KM/H"),
                        SizedBox(
                          width: 20,
                        ),
                        Text("55 KM/H"),
                        SizedBox(
                          width: 20,
                        ),

                        Text("Nord ouest"),
                        Image.network("https://cdn-icons-png.flaticon.com/512/61/61021.png?w=360",
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
                      children:<Widget>[
                        Text("Pluviometrie",
                          style:TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Image.network("https://png.pngtree.com/png-vector/20190719/ourlarge/pngtree-rain-icon-png-image_1558221.jpg",
                          width: 50,
                          height: 50,
                        ),

                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("    Jour",
                          style:TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text("mois",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text("annee",
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
                        Text("   1mm",
                          style:TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text("   2mm",
                          style:TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text("   3mm",
                          style:TextStyle(
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