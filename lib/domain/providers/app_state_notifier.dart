import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/domain/models/app_state.dart';
import 'package:todo_app/domain/models/todo.dart';
import 'package:todo_app/domain/models/priority.dart';
import 'package:todo_app/domain/providers/json_notifier.dart';

final ref = AsyncNotifierProvider<AppStateNotifier, AppState>(
  () => JsonNotifier(),
);

abstract class AppStateNotifier extends AsyncNotifier<AppState> {
  Todo addTodo(Todo todo);
  Future<Todo?> updateTodo(Todo todo);
  Future<int?> deleteTodo(Todo todo);
  Future<bool?> setTodoCompleted(Todo todo, bool isCompleted);
  Future<bool?> setTodoPriority(Todo todo, Priority priority);
}
