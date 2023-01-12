// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:todo_rest_api/TodoPage/widgets/AddButton.dart';
import 'package:todo_rest_api/TodoPage/widgets/TodoList.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFC7C8),
        body: Container(
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              PersonIcon(),
              SizedBox(height: 20),
              TodoList(),
              SizedBox(
                height: 30,
              ),
              AddButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class PersonIcon extends StatelessWidget {
  const PersonIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 1000),
      child: const Icon(
        Icons.person_outline,
        color: Colors.white,
        size: 80,
      ),
    );
  }
}
