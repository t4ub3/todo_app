import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/presentation/dialogs/todo_listitem.dart';
import 'package:todo_app/main.dart';

class TodoList extends ConsumerWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: ref
          .watch(provider)
          .when(
            data: (state) {
              return ListView.builder(
                itemCount: state.todos.length,
                itemBuilder: (context, index) {
                  final todo = state.todos[index];
                  return TodoListitem(todo);
                },
              );
            },
            loading: () => const CircularProgressIndicator(),
            error: (e, st) => const Text('Error loading todos'),
          ),
    );
  }
}
