import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController myController = TextEditingController();

  String todos = "";

  void greetUser() {
    setState(() {
      todos = myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text("Todo App"),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  hintText: "Enter todo item",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(onPressed: greetUser, child: Text("Add Todo")),
              Text(todos),
            ],
          ),
        ),
      ),
    );
  }
}
