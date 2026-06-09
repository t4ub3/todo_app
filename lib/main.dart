import 'package:flutter/material.dart';
import 'package:todo_app/models/app_state.dart';
import 'package:todo_app/providers/app_state_notifier.dart';
import 'package:todo_app/providers/json_notifier.dart';
import 'package:todo_app/screens/todo_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final provider = AsyncNotifierProvider<AppStateNotifier, AppState>(
  () => JsonNotifier(),
);

void main() {
  runApp(ProviderScope(child: TodoApp()));
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: TodoList(),
    );
  }
}
