import 'package:cozy_app/pages/splash_pages.dart';
import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      home: SplashPage(),
    );
  }
}
