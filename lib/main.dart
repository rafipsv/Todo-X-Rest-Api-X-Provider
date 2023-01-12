import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_rest_api/Provider/TodoProvider.dart';
import 'package:todo_rest_api/TodoPage/TodoPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TodoPage(),
      ),
    );
  }
}
