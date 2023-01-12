// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AddTodoIcon extends StatelessWidget {
  const AddTodoIcon({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(bottom: 40),
      height: size.height * 0.2,
      width: size.width,
      color: Colors.white,
      alignment: Alignment.center,
      child: FadeInDown(
        delay: const Duration(milliseconds: 1000),
        child: const Icon(
          Icons.person_outline,
          color: Color(
            0xff12A0DE,
          ),
          size: 70,
        ),
      ),
    );
  }
}
