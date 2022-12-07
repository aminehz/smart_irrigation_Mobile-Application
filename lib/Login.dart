import 'package:flutter/material.dart';
void main() =>runApp(
    MaterialApp(
      home: Login(),
    )
);



class Login extends StatelessWidget {

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


                   TextField (
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Username',
                        hintText: 'Enter Your userName'
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 150,
                  ),
                ],
              ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

                  TextField (obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Your Password',
                      hintText: 'Enter Your Password',
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 150,
                  ),



            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              TextButton(
                onPressed: () {},
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