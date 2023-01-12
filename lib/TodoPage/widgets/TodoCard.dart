// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_rest_api/Provider/TodoProvider.dart';
import 'package:todo_rest_api/UpdatePage/UpdatePage.dart';

class TodoCard extends StatelessWidget {
  final String title;
  final String id;
  const TodoCard({
    super.key,
    required this.title,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
        bottom: 10,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffFFC7C8),
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(0, 0),
            color: Color.fromARGB(255, 235, 234, 234),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff183838),
              fontWeight: FontWeight.w400,
              letterSpacing: 4,
              fontSize: 16,
            ),
          ),
          Consumer<TodoProvider>(
            builder: (context, value, child) {
              return Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Color(0xffF385B0),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(0, 0),
                      color: Color.fromARGB(255, 235, 234, 234),
                    ),
                  ],
                ),
                child: PopupMenuButton(
                  onSelected: (val) {
                    if (val == "Delete") {
                      value.deleteTodo(id, context);
                    } else {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => UpdatePage(
                                  id: id,
                                )),
                          ),
                          (route) => false);
                    }
                  },
                  color: const Color(0xffFFC7C8),
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        value: "Edit",
                        child: Text(
                          "Edit",
                          style: TextStyle(
                              color: Color(0xff183838),
                              fontWeight: FontWeight.w600,
                              letterSpacing: 3),
                        ),
                      ),
                      const PopupMenuItem(
                        value: "Delete",
                        child: Text(
                          "Delete",
                          style: TextStyle(
                              color: Color(0xff183838),
                              fontWeight: FontWeight.w600,
                              letterSpacing: 3),
                        ),
                      ),
                    ];
                  },
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
