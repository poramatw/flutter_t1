// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:start/pages/components/useButton.dart';

class DialogBox extends StatelessWidget {
  final txtController;
  VoidCallback onSaved;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      this.txtController,
      required this.onSaved,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // user input
            TextField(
              controller: txtController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'your what to do'),
            ),

            // button save
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                UseBtn(txt: 'Save', onPressed: onSaved),
                const SizedBox(
                  width: 10,
                ),
                UseBtn(txt: 'Cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
