import 'package:hive/hive.dart';

class TodoDatabase {
  List todoList = [];

  //  reference the box
  final _myBox = Hive.box('myBox');

  void createInitialData() {
    todoList = [
      ['Make tutorial', false],
      ['Do excersice', false],
      ['Practice coding', false],
    ];
  }

  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  void updateData() {
    _myBox.put('TODOLIST', todoList);
  }
}
