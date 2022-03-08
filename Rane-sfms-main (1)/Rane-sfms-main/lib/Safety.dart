import 'package:flutter/material.dart';

import 'SafetyCreate.dart';
import 'SafetyStop.dart';

void main() => runApp(Safety());

class Safety extends StatelessWidget {
  const Safety({Key? key}) : super(key: key);
  sampleFunction(){

    print('Function on Click Event Called.');
    // Put your code here, which you want to execute on onPress event.
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[


                    RaisedButton(
                      child: Text("       Safety-Create        "),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SafetyCreate ()),
                        );
                      },
                      color: Colors.red,
                      textColor: Colors.white,
                      splashColor: Colors.grey,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                    RaisedButton(
                      child: Text(" Safety-Stop "),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SafetyStop()),
                        );},

                      color: Colors.red,
                      textColor: Colors.white,
                      splashColor: Colors.grey,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),

                  ],
                )
            )
        )
    );
  }
}