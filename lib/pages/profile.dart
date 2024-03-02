// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:start/data/database.dart';
import 'package:start/pages/components/dialogBox.dart';
import 'package:start/pages/components/todo_tile.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // reference hive box
  final _myBox = Hive.box('myBox');
  TodoDatabase db = TodoDatabase();

  @override
  void initState() {
    // first time open the app
    if (_myBox.get('TODOLIST') == null) {
      db.createInitialData();
    } else {
      // already exists daya
      db.loadData();
    }

    super.initState();
  }

  // text controlller
  final _controller = TextEditingController();

  // method
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.todoList[index][1] = !db.todoList[index][1];
    });
    db.updateData();
  }

  void saveNewTask() {
    setState(() {
      db.todoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.pop(context);
    db.updateData();
  }

  void deleteTask(int index) {
    setState(() {
      db.todoList.removeAt(index);
    });
    db.updateData();
  }

  void createNewtask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            txtController: _controller,
            onSaved: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('TO DO'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewtask,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.yellow[100],
      body: ListView.builder(
        itemCount: db.todoList.length,
        itemBuilder: (context, index) {
          return TodoList(
            taskName: db.todoList[index][0],
            taskCompleted: db.todoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deletedFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
