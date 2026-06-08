import 'package:todo_app/models/app_state.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/providers/app_state_notifier.dart';

class JsonNotifier extends AppStateNotifier {
  @override
  Future<Todo?> addTodo(Todo todo) {
    // TODO: implement addTodo
    throw UnimplementedError();
  }

  @override
  AppState build() {
    return AppState();
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
}
