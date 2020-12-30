import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:login_system/constants/colors.dart';
import 'package:login_system/screens/login/login.dart';

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]); 
    return MaterialApp(
      title: "Login System",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: theamColor,
      ),
      home: HomeScreen(),
    
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Login(),
    );
  }
}
