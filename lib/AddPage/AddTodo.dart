// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:todo_rest_api/AddPage/widgets/AddTodoAppBar.dart';
import 'package:todo_rest_api/AddPage/widgets/AddTodoIcon.dart';
import 'package:todo_rest_api/AddPage/widgets/BothInputFields.dart';
import 'package:todo_rest_api/AddPage/widgets/PushButton.dart';

class AddTodo extends StatelessWidget {
  const AddTodo({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffA9FFFE),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AddTodoAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const AddTodoIcon(),
              textWidget(),
              BothInputFields(
                titleController: titleController,
                descController: descController,
              ),
              PushButton(
                titleController: titleController,
                descController: descController,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textWidget() {
    return FadeIn(
      delay: const Duration(milliseconds: 1200),
      child: const Padding(
        padding: EdgeInsets.only(top: 50),
        child: Text(
          "What is in your mind?",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Color(0xff183838),
              letterSpacing: 3),
        ),
      ),
    );
  }
}
