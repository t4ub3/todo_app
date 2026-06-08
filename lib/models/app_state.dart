import 'package:todo_app/models/priority.dart';
import 'package:todo_app/models/todo.dart';

class AppState {
  List<Todo> todos = [
    Todo(
      id: 1,
      title: 'Learn Flutter',
      isCompleted: false,
      priority: Priority.high,
      description: 'Learn how to build a Todo App with Flutter and Riverpod.',
    ),
    Todo(
      id: 2,
      title: 'Build a Todo App',
      isCompleted: false,
      description: 'Build a simple Todo App with Flutter and Riverpod.',
    ),
  ];
}
