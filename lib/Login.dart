import 'package:flutter/material.dart';
import 'PageNav.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';


Future<bool> SignIn(String email,String password) async {
  final response= await http.post(
    Uri.parse('http://192.168.1.10:3000/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email':email,
      'password':password,
    }),
  );
  if(response.statusCode == 200){
    return true;
  }else{
    return false;
  }

}

void main() =>runApp(
    MaterialApp(
      home: Login(),
    )
);

class Login extends StatefulWidget{
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Irrigation', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[


              Expanded(
                child: TextField(
                  controller: _controller1,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color.fromRGBO(201, 209, 224, 0.7), width: 1.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color.fromRGBO(44, 147, 68, 1.0))),
                      labelText: 'Username',
                      hintText: 'Enter Your userName'),
                ),
              ),

            ],
          ),
          SizedBox(width: 50, height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Expanded(
                child: TextField(obscureText: true,
                  controller: _controller2,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color.fromRGBO(201, 209, 224, 0.7), width: 1.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color.fromRGBO(44, 147, 68, 1.0))),
                      labelText: 'Password',
                      hintText: 'Enter Your Password'),
                ),
              ),



            ],
          ),
          SizedBox(width: 50, height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              TextButton(
                onPressed: ()  async {
                  bool isLoggedIn= await SignIn(_controller1.text, _controller2.text);
                  setState(()   {

                    if(isLoggedIn == true){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>PageNav(activePage: 0,)),
                      );
                    }else{
                      log('failed to login');
                    }
                  });

                },
                child: Text('Login',
                    style: TextStyle(color: Colors.white)),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green),
              ),

            ],
          ),

        ],
      ),

    );

  }
}