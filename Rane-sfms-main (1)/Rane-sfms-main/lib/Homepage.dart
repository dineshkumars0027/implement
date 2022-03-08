import 'package:flutter/material.dart';
import 'Dashboard.dart';
import 'LineStoppageStop.dart';
import 'Safety.dart';

void main() => runApp(Homepage());

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
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
                      child: Text("    Dashboard    "),
                       onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
        );},
                      color: Colors.red,
                      textColor: Colors.white,
                      splashColor: Colors.grey,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                    RaisedButton(
                      child: Text("       Safety        "),
                      onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Safety()),
    );
                      },
                      color: Colors.red,
                      textColor: Colors.white,
                      splashColor: Colors.grey,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                    RaisedButton(
                      child: Text(" Line-Stoppage "),
                      onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LineStoppageStop()),
    );},
                      
                      color: Colors.red,
                      textColor: Colors.white,
                      splashColor: Colors.grey,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),

                  ],
                )
            )
        ),
      debugShowCheckedModeBanner: false,
    );
  }
}