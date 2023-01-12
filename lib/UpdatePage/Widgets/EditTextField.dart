// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class EditTextField extends StatelessWidget {
  final TextEditingController titleEdit;
  final TextEditingController descEdit;
  const EditTextField({
    super.key,
    required this.titleEdit,
    required this.descEdit,
  });

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
              color: const Color(0xff9499FF),
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
                color: const Color(0xff9499FF),
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
                controller: titleEdit,
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
              color: const Color(0xff9499FF),
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
                color: const Color(0xff9499FF),
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
                controller: descEdit,
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
