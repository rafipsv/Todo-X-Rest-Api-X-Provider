// ignore_for_file: file_names, sized_box_for_whitespace, use_build_context_synchronously
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_rest_api/Provider/TodoProvider.dart';

import 'package:todo_rest_api/TodoPage/widgets/TodoCard.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  void initState() {
    getTodo();
    super.initState();
  }

  void getTodo() async {
    Provider.of<TodoProvider>(context, listen: false).getTodo();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return FadeIn(
      delay: const Duration(milliseconds: 1800),
      child: Container(
        height: size.height * 0.6,
        width: size.width,
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          color: const Color(0xffFFC7C8),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(0, 0),
              color: Color.fromARGB(255, 235, 234, 234),
            ),
          ],
        ),
        child: Consumer<TodoProvider>(
          builder: ((context, value, child) {
            return Visibility(
              visible: value.todos.isNotEmpty,
              replacement: const Center(
                child: CircularProgressIndicator(color: Color(0xffAEFFFD)),
              ),
              child: ListView(
                children: List.generate(
                  value.todos.length,
                  (index) => TodoCard(
                    id: value.todos[index].id.toString(),
                    title: value.todos[index].title.toString(),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
