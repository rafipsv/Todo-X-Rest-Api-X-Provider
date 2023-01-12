// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:todo_rest_api/AddPage/AddTodo.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: const Duration(milliseconds: 1500),
      child: GestureDetector(
        onTap: (() {
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: ((context) {
            return const AddTodo();
          })), (route) => false);
        }),
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffA9FFFE),
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
              color: const Color(0xffA9FFFE),
              border: Border.all(
                color: const Color.fromARGB(255, 136, 184, 183),
              ),
            ),
            child: const Text(
              "NEW",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff5F8B8A),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
