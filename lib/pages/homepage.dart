// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Start to dev")),
        backgroundColor: Colors.white,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.login))],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.person_2)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H o m e"),
              onTap: () {
                print('home tap');

                Navigator.pop(context);

                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S e t t i n g s"),
              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, '/secondpage');
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
      ]),
      body: Center(
          child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.blue[100],
              )
            ],
          ),
          Column(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.red[100],
              )
            ],
          ),
        ],
      )),
    );
  }
}
