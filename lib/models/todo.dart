import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/models/priority.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    @Default(Priority.low) Priority priority,
    required String title,
    @Default('-') String description,
    required bool isCompleted,
  }) = _Todo;

  factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);
}
