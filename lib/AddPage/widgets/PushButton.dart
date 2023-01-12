// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_rest_api/Provider/TodoProvider.dart';

class PushButton extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController descController;
  const PushButton(
      {super.key, required this.titleController, required this.descController});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: const Duration(milliseconds: 1000),
      child: Consumer<TodoProvider>(
        builder: (context, value, child) {
          return GestureDetector(
            onTap: (() {
              value.addTodo(titleController.text, descController.text, context);
              titleController.text = "";
              descController.text = "";
            }),
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFFC7C8),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 6,
                    offset: Offset(0, 0),
                    color: Colors.white,
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xffFFC7C8),
                  border: Border.all(
                    color: const Color.fromARGB(255, 92, 91, 91),
                    width: 0.5,
                  ),
                ),
                child: const Text(
                  "Push",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
