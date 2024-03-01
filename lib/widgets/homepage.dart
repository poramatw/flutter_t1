// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}

class body extends StatelessWidget {
  const body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.blue[100],
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue[400],
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue[600],
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue[800],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.red[100],
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.red[400],
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.red[600],
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.red[800],
            ),
          ],
        ),
      ],
    ));
  }
}