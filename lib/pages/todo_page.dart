import 'package:flutter/material.dart';
import 'package:flutter_project/utils/dialog_box.dart';
import 'package:flutter_project/utils/list_card.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

final _controller = TextEditingController();

class _TodoPageState extends State<TodoPage> {
  List _todoList = [
    ["Learn dart", false],
    ["Learn flutter", true],
    ["Learn firebase", false],
    ["Learn node js", true],
    ["Learn react js", false],
    ["Learn angular js", true],
    ["Learn vue js", true],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      _todoList[index][1] = !_todoList[index][1];
    });
  }

  // void saveNewTask() {
  //   setState(() {
  //     _todoList.add([_controller.text, false]);
  //   });
  //   _controller.clear();
  //   Navigator.of(context).pop();
  // }

  void saveNewTask() {
    setState(() {
      _todoList.insert(0, [_controller.text, false]);
    });

    _controller.clear();
    Navigator.of(context).pop();
  }

  void _createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Todo List'))),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: _createNewTask,
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: _todoList.length,
        itemBuilder: (context, index) {
          return TodoCard(
            taskName: _todoList[index][0],
            isCompleted: _todoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
