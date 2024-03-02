// ignore_for_file: sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

class UseBtn extends StatelessWidget {
  final String txt;
  VoidCallback onPressed;

  UseBtn({super.key, required this.txt, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(txt),
      color: Theme.of(context).primaryColor,
    );
  }
}
