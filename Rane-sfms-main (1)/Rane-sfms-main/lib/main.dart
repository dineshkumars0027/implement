import 'package:flutter/material.dart';

 
import 'Homepage.dart';
import 'Loginpage.dart';

void main() => runApp(MaterialApp(
   title: 'Named Routes Demo',
  
  initialRoute: '/',
  routes: {
   
    '/': (context) => const Loginpage(),
    
    '/second': (context) =>  const Homepage(),
  },
   
  ));


