import 'package:flutter/material.dart';
import 'package:todo_app/presentation/components/todo_list.dart';
import 'package:todo_app/presentation/dialogs/edit_todo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle settings button press
            },
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: TodoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => EditTodo(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
