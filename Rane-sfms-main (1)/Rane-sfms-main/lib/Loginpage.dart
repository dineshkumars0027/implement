import 'dart:convert';

import 'package:flutter/material.dart';
import 'OtpPage.dart';
import 'Homepage.dart';
import 'constants.dart';
import 'package:http/http.dart' as http;

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _Loginpage createState() => _Loginpage();
}

class _Loginpage extends State<Loginpage> {
  String username = "", password = "";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Shape_1.png",),
                    fit: BoxFit.cover)),
            padding: const EdgeInsets.all(40.0),

            width: double.infinity,

            child: Center(
                child: ListView(children: <Widget>[
                  const SizedBox(
                    height: 150.0,

                  ),
              Image.asset(bgImage, height: 100.0,),


              const SizedBox(
                height: 50.0,

              ),

              const SizedBox(height: 30.0),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.account_circle, color: Color(0xff175EAB)),
                          hintText: "Username",

                          hintStyle: TextStyle(color: Color(0xff175EAB))),
                      onChanged: (value) {
                        //set username  text on change
                        username = value;
                      },
                    ),
                    const SizedBox(height: 30.0),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.lock, color:  Color(0xff175EAB)),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Color(0xff175EAB))),
                      onChanged: (value) {
                        //set username  text on change
                        password = value;
                      },
                    ),


                  ],
                ),
              ),
                  const SizedBox(
                    height: 50.0,

                  ),
              ElevatedButton(
                  onPressed: () {

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>OtpPage()));
                    },

                  child: const Text('LOGIN'))
            ]))));
  }
}
