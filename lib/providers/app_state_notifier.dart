import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/models/app_state.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/providers/json_notifier.dart';

final ref = NotifierProvider<JsonNotifier, AppState>(() => JsonNotifier());

abstract class AppStateNotifier extends Notifier<AppState> {
  Future<Todo?> addTodo(Todo todo);
  Future<Todo?> updateTodo(Todo todo);
  Future<int?> deleteTodo(Todo todo);
  Future<bool?> setTodoCompleted(Todo todo, bool isCompleted);
}
