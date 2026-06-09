import 'dart:io';

import 'package:todo_app/models/app_state.dart';
import 'package:todo_app/models/priority.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/providers/app_state_notifier.dart';

class JsonNotifier extends AppStateNotifier {
  @override
  Future<Todo?> addTodo(Todo todo) {
    // TODO: implement addTodo
    throw UnimplementedError();
  }

  @override
  Future<AppState> build() async {
    // Load state from JSON file
    final state = await _loadState();
    return state ?? AppState(todos: []);
  }

  @override
  Future<int?> deleteTodo(Todo todo) {
    // TODO: implement deleteTodo
    throw UnimplementedError();
  }

  @override
  Future<bool?> setTodoCompleted(Todo todo, bool isCompleted) {
    // TODO: implement setTodoCompleted
    throw UnimplementedError();
  }

  @override
  Future<Todo?> updateTodo(Todo todo) {
    // TODO: implement updateTodo
    throw UnimplementedError();
  }

  @override
  Future<bool?> setTodoPriority(Todo todo, Priority priority) {
    // TODO: implement setTodoPriority
    throw UnimplementedError();
  }

  Future<bool> _saveState() async {
    final file = File('app_state.json');
    try {
      final tempState = state.value ?? AppState(todos: []);
      await file.writeAsString(tempState.toJson().toString());
    } catch (e) {
      print('Error saving state: $e');
    }
    return true;
  }

  Future<AppState?> _loadState() async {
    final file = File('app_state.json');
    print(file.absolute.path);
    try {
      if (await file.exists()) {
        final json = await file.readAsString();
        final state = AppState.fromJson(json);
        return state;
      }
    } catch (e) {
      print('Error loading state: $e');
    }
    return null;
  }
}
