import 'package:flutter/material.dart';

class TodoListitem extends StatelessWidget {
  const TodoListitem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.info),
      title: Text('Todo Item'),
      trailing: Checkbox(value: false, onChanged: (bool? value) {}),
    );
  }
}
