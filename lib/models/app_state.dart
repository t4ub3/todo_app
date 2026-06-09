import 'dart:convert';

import 'package:todo_app/models/priority.dart';
import 'package:todo_app/models/todo.dart';

class AppState {
  List<Todo> todos;

  AppState({required this.todos});

  Map<String, dynamic> toJson() {
    return {
      'todos': todos.map((todo) => todo.toJson()).toList(),
    };
  }

  factory AppState.fromJson(String json) {
    final data = jsonDecode(json) as Map<String, dynamic>;
    final todos = (data['todos'] as List)
        .map((todoJson) => Todo.fromJson(todoJson as Map<String, dynamic>))
        .toList();
    return AppState(todos: todos);
  }
}
