// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // create variables
  int _count = 0;

  // method
  void _increment() {
    setState(() {
      _count++;
    });
  }

  // UI (user interface)
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Hompage'),
        Text(
          _count.toString(),
          style: TextStyle(fontSize: 40),
        ),
        ElevatedButton(onPressed: _increment, child: Text('Click'))
      ]),
    );
  }
}
