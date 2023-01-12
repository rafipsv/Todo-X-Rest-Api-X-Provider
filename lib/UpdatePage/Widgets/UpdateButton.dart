// ignore_for_file: file_names, use_build_context_synchronously

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_rest_api/TodoPage/TodoPage.dart';

import '../../Provider/TodoProvider.dart';

class UpdateButton extends StatelessWidget {
  final TextEditingController titleEdit;
  final TextEditingController descEdit;
  final String id;
  const UpdateButton({
    super.key,
    required this.titleEdit,
    required this.descEdit,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: const Duration(milliseconds: 1000),
      child: Consumer<TodoProvider>(
        builder: (context, value, child) {
          return GestureDetector(
            onTap: (() async {
              await value.editTodo(titleEdit.text, descEdit.text, context, id);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const TodoPage()),
                  ),
                  (route) => false);
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
                  "Save",
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
