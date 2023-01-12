// ignore_for_file: file_names, use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:todo_rest_api/Models/TodoModel.dart';
import 'package:todo_rest_api/Utils/SnackBarWidget.dart';

class Services {
  Future<void> addTodo(BuildContext context, String title, String desc) async {
    String url = "https://api.nstack.in/v1/todos";
    var body = {
      "title": title,
      "description": desc,
      "is_completed": "false",
    };
    final response = await http.post(
      Uri.parse(url),
      body: body,
    );
    if (response.statusCode == 201) {
      Utils utils = Utils();
      utils.showSnackBar(context, "Todo Added Successfully", false);
    } else {
      Utils utils = Utils();
      utils.showSnackBar(context, "Something Went Wrong", true);
    }
  }

  Future<List<TodoModel>> getTodo() async {
    String url = "https://api.nstack.in/v1/todos?page=1&limit=10";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      List data = result["items"];
      List<TodoModel> todos = [];
      for (var todo in data) {
        TodoModel todoModel = TodoModel(
            title: todo["title"],
            description: todo["description"],
            id: todo["_id"]);
        todos.add(todoModel);
      }
      return todos;
    }
    return [
      TodoModel(title: "", description: "", id: ""),
    ];
  }

  Future<void> deleteTodo(String id, BuildContext context) async {
    String url = "https://api.nstack.in/v1/todos/$id";
    final response = await http.delete(Uri.parse(url));
    if (response.statusCode == 200) {
      Utils utils = Utils();
      utils.showSnackBar(context, "Todo Deleted Successfully", false);
    } else {
      Utils utils = Utils();
      utils.showSnackBar(context, "Something Went Wrong", true);
    }
  }

  Future<void> editTodo(
      BuildContext context, String title, String desc, String id) async {
    String url = "https://api.nstack.in/v1/todos/$id";
    var body = {
      "title": title,
      "description": desc,
      "is_completed": "false",
    };
    final response = await http.put(
      Uri.parse(url),
      body: body,
    );
    if (response.statusCode == 200) {
      Utils utils = Utils();
      utils.showSnackBar(context, "Todo Edited Successfully", false);
    } else {
      Utils utils = Utils();
      utils.showSnackBar(context, "Something Went Wrong", true);
    }
  }
}
