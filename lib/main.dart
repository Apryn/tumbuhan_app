import 'package:flutter/material.dart';
import 'package:tumbuhan_app/Screen/homeScreen.dart';
import 'package:tumbuhan_app/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Plant',
        theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: bgColor,
          fontFamily: "Poppins",
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomeScreen());
  }
}
