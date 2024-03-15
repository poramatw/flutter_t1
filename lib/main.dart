// ignore_for_file: prefer_const_constructors, avoid_print, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:start/pages/homepage.dart';
import 'package:start/pages/profile.dart';
import 'package:start/pages/secondPage.dart';
import 'package:start/pages/welcome.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('myBox');

<<<<<<< HEAD
=======
import 'pages/login.dart';

void main() {
>>>>>>> e0ab172 (updated)
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
<<<<<<< HEAD
      home: Profile(),
      theme: ThemeData(primarySwatch: Colors.yellow),
      routes: {
        '/welcome': (context) => Welcome(),
        '/homepage': (context) => Homepage(),
        '/secondpage': (context) => SecondPage(),
        '/profile': (context) => Profile(),
=======
      home: LoginPage(),
      // home: Homepage(token: 's', userName: 'userName', email: 'email', firstName: 'firstName', gender: 'gender', image: 'image'),
      routes: {
        //  '/homepage': (context) => Homepage(),
         '/secondpage': (context) => SecondPage(),
>>>>>>> e0ab172 (updated)
      },
      
    );
  }
}
