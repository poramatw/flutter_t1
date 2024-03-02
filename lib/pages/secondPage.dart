// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // create controller
  TextEditingController txtControl = TextEditingController();

  // create variables
  String txtStart = '';

  // method
  void _greeting() {
    setState(() {
      txtStart = 'Hello, ' + txtControl.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Input text from user'),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "type something..."),
              controller: txtControl,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              child: ElevatedButton(
                onPressed: _greeting,
                child: Text('submit'),
              ),
            ),
            Text(
              txtStart,
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      )),
    );
  }
}
