// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:todo_rest_api/TodoPage/TodoPage.dart';
class AddTodoAppBar extends StatelessWidget {
  const AddTodoAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      title: FadeInDown(
        delay: const Duration(milliseconds: 800),
        child: IconButton(
          icon: const Icon(
            Icons.close,
            color: Color(
              0xff12A0DE,
            ),
            size: 35,
          ),
          onPressed: (() {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: ((context) => const TodoPage()),
              ),
              (route) => false,
            );
          }),
        ),
      ),
    );
  }
}
