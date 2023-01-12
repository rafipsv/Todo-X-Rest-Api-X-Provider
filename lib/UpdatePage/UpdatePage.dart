// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:todo_rest_api/UpdatePage/Widgets/EditTextField.dart';
import 'package:todo_rest_api/UpdatePage/Widgets/UpdateAppBar.dart';
import 'package:todo_rest_api/UpdatePage/Widgets/UpdateButton.dart';

import '../AddPage/widgets/AddTodoIcon.dart';

class UpdatePage extends StatelessWidget {
  final String id;
  const UpdatePage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleEdit = TextEditingController();
    TextEditingController descEdit = TextEditingController();
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff9499FF),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: UpdateTodoAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AddTodoIcon(),
            textWidget(),
            EditTextField(
              titleEdit: titleEdit,
              descEdit: descEdit,
            ),
            UpdateButton(
              titleEdit: titleEdit,
              descEdit: descEdit,
              id: id,
            )
          ],
        ),
      ),
    ));
  }

  Widget textWidget() {
    return FadeIn(
      delay: const Duration(milliseconds: 1200),
      child: const Padding(
        padding: EdgeInsets.only(top: 50),
        child: Text(
          "Update your task...",
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
