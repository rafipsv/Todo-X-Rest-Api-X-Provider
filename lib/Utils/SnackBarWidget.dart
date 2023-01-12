// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Utils {
  void showSnackBar(BuildContext context, String msg, bool isError) {
    final snackBar = SnackBar(
      content: Text(
        msg,
        style: TextStyle(
          color: isError ? Colors.white : const Color(0xff183838),
          fontWeight: FontWeight.w700,
          letterSpacing: 3,
        ),
      ),
      backgroundColor: isError ? Colors.red : const Color(0xffFFC7C8),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
