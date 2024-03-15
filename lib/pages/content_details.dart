// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../widgets/home_widget.dart';

class ContentDetails extends StatelessWidget {
  ContentDetails(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.imageDetail});

  final String name;
  final String imageUrl;
  final String imageDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Content details')),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100]),
            height: 340,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            FullScreenImage(imageUrl: imageUrl),
                      ));
                },
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                )),
          ),
          Text(name),
          Text('Detail: $imageDetail')
        ],
      ),
    );
  }
}
