// ignore_for_file: prefer_const_constructors, avoid_print, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:start/pages/homepage.dart';
import 'package:start/pages/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // create variables
  String name = "Test start";
  int age = 24;
  double pi = 3.115;
  bool isStart = true;
  List arrData = [1, 3, 4, 5, 6];

  void greet() {
    for (var i = 0; i < arrData.length; i++) {
      print(arrData[i]);
    }
  }

  // map
  Map user = {'name': "JJ", 'age': 23, 'height': 150, 'weight': 42};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      routes: {
         '/homepage': (context) => Homepage(),
         '/secondpage': (context) => SecondPage(),
      },
    );
  }
}