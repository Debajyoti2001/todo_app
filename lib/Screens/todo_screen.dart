import 'package:flutter/material.dart';
import 'package:todo/Widgets/todo_list.dart';
import 'task_creator.dart';
import 'package:provider/provider.dart';
import 'package:todo/modals/task_data.dart';
class ToDoScreen extends StatelessWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)
             )
            ),
              context: context, builder: (context) =>   TaskCreator());
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Container(
              padding: const EdgeInsets.only(
                  bottom: 30.0, left: 30.0, right: 30.0, top: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.list_outlined,
                        color: Colors.lightBlueAccent, size: 40.0),
                  ),
                  const SizedBox(height: 30.0),
                  const Text('Todo',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w700)),
                  Text('${Provider.of<TaskData>(context).taskCount} Tasks',
                      style: const TextStyle(color: Colors.white, fontSize: 20.0)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child:  ToDoList(),
            ),
          )
        ],
      ),
    );
  }
}
