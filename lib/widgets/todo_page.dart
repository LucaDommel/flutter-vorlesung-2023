import 'package:flutter/material.dart';
import 'package:flutter_vorlesung/repo/todo_repo.dart';

class TodoPage extends StatelessWidget {
  TodoPage({super.key});

  final todoRepository = TodoRepository();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: todoRepository.getTodos(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          return const SizedBox.shrink();
        });
  }
}
