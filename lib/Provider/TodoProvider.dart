// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todo_rest_api/Models/TodoModel.dart';
import 'package:todo_rest_api/Services/Services.dart';

class TodoProvider with ChangeNotifier {
  List<TodoModel> todos = [];
  bool isLoad = true;
  Future<void> addTodo(
      String title, String description, BuildContext context) async {
    Services services = Services();
    await services.addTodo(context, title, description);
    notifyListeners();
  }

  void getTodo() async {
    Services services = Services();
    isLoad = false;
    notifyListeners();
    List<TodoModel> todo = await services.getTodo();
    isLoad = true;
    todos = todo;
    todos = List.from(todos.reversed);
    notifyListeners();
  }

  void deleteTodo(String id, BuildContext context) async {
    Services services = Services();
    List<TodoModel> dummy = todos..removeWhere((element) => element.id == id);
    todos = dummy;
    await services.deleteTodo(id, context);
    notifyListeners();
  }

  Future<void> editTodo(
      String title, String description, BuildContext context, String id) async {
    Services services = Services();
    await services.editTodo(context, title, description, id);
    notifyListeners();
  }
}
