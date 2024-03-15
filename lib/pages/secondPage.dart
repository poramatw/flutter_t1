<<<<<<< HEAD
// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, avoid_print
=======
// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, must_be_immutable
>>>>>>> e0ab172 (updated)

import 'package:flutter/material.dart';
import 'package:start/models/index_models.dart';

<<<<<<< HEAD
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});
=======
class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  List<IndexModel> indexValues = [];

  void _getIndexValues (){
    indexValues = IndexModel.getIndexVal();
  }

>>>>>>> e0ab172 (updated)

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
    _getIndexValues();
    return Scaffold(
<<<<<<< HEAD
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
=======
      appBar: AppBar(
        title: Text("Index values"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: 5,),
        itemCount: indexValues.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 120,
            decoration: BoxDecoration(color: Colors.grey[350], borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text(indexValues[index].indexName),
                Center(
                  child: Text(indexValues[index].curVal,
                  style: TextStyle(fontSize: 35),),
                ),
                Text(indexValues[index].preVal + " since last month"),
                ],
            ),
          );
        },),
>>>>>>> e0ab172 (updated)
    );
  }
}
