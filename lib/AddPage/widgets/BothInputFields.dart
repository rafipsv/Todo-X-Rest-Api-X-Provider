// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class BothInputFields extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController descController;
  const BothInputFields({super.key, required this.titleController, required this.descController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeIn(
          delay: const Duration(milliseconds: 1200),
          child: Container(
            margin: const EdgeInsets.only(
              top: 40,
              left: 30,
              right: 30,
            ),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffA9FFFE),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 3,
                  spreadRadius: 2,
                  offset: Offset(0, 0),
                )
              ],
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffA9FFFE),
                border: Border.all(
                  color: const Color(0xff183838),
                  width: 0.3,
                ),
              ),
              child: TextField(
                style: const TextStyle(
                  color: Color(0xff183838),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2,
                ),
                controller: titleController,
                decoration: const InputDecoration(
                  hintText: "Title...",
                  hintStyle: TextStyle(letterSpacing: 5),
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 20),
                ),
              ),
            ),
          ),
        ),
        FadeIn(
          delay: const Duration(milliseconds: 1200),
          child: Container(
            margin: const EdgeInsets.only(
              top: 40,
              left: 30,
              right: 30,
            ),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffA9FFFE),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 3,
                  spreadRadius: 2,
                  offset: Offset(0, 0),
                )
              ],
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffA9FFFE),
                border: Border.all(
                  color: const Color(0xff183838),
                  width: 0.3,
                ),
              ),
              child: TextField(
                style: const TextStyle(
                  color: Color(0xff183838),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2,
                ),
                controller: descController,
                maxLines: 6,
                decoration: const InputDecoration(
                  hintText: "Description...",
                  hintStyle: TextStyle(letterSpacing: 5),
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 20, top: 20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
