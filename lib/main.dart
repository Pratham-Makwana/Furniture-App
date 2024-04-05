import 'package:flutter/material.dart';
import 'package:furniture_app/screens/home_screen.dart';
import 'package:furniture_app/screens/login_screen.dart';
import 'package:furniture_app/screens/product_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}
