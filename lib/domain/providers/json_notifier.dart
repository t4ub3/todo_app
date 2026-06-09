import 'dart:convert';
import 'dart:io';

import 'package:riverpod/src/framework.dart';
import 'package:todo_app/domain/models/app_state.dart';
import 'package:todo_app/domain/models/priority.dart';
import 'package:todo_app/domain/models/todo.dart';
import 'package:todo_app/domain/providers/app_state_notifier.dart';

class JsonNotifier extends AppStateNotifier {
  @override
  Todo addTodo(Todo todo) {
    final currentState = state;
    currentState.value!.todos = [...currentState.value!.todos, todo];
    state = currentState;
    // _saveState();
    return todo;
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
      final jsonString = jsonEncode(tempState.toJson());
      await file.writeAsString(jsonString);
    } catch (e) {
      print('Error saving state: $e');
    }
    return true;
  }

  Future<AppState?> _loadState() async {
    final file = File('app_state.json');
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
