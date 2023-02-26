import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;







void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget{
  const Home({super.key});
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
 var actualCondition;
 var humidity;
 var temperature;
 var vent;
  @override
  void initState(){
    super.initState();
    fetchWeather();
  }
Future<void> fetchWeather() async {
    final response= await http.get(Uri.parse('http://api.openweathermap.org/data/2.5/weather?appid=b3db578458e199bfda327ec5ba3b3178&lang=fr&q=Sousse'));

    if(response.statusCode== 200){
      setState(() {
        actualCondition= json.decode(response.body)['weather'][0]['main'];
        humidity=json.decode(response.body)['main']['humidity'];
        temperature=((json.decode(response.body)['main']['temp'])-273.15).round();
        vent=((json.decode(response.body)['wind']['speed'])).round();

      });
    } else{
      throw Exception("Failed to get weather data");
    }
}
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
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[

                    Text(
                      actualCondition,
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
                          "$humidity%",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
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
                          "$temperature°C",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
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
