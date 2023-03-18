import 'package:flutter/material.dart';
import 'Screens/todo_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo/modals/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ToDoScreen(),
      ),
    );
  }
}
