import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/modals/task_data.dart';

class TaskCreator extends StatelessWidget {
   TaskCreator({Key? key}) : super(key: key);

late String task;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 30.0, left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
               TextField(
                onChanged: (value){
                  task = value;
                },
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              Container(
                color: Colors.lightBlueAccent,
                child: TextButton(
                  onPressed: (){
                    Provider.of<TaskData>(context, listen: false).addTask(task);
                    Navigator.pop(context);
                  },
                  child: const Text('Add', style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ));
  }
}
