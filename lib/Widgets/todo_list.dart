import 'package:flutter/material.dart';
import 'todo_text.dart';
import 'package:provider/provider.dart';
import 'package:todo/modals/task_data.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskdata.tasks[index];
            return ToDoText(
              taskName:task.taskName,
              isChecked: task.isDone,
              checkBoxCallBack: (checkBoxState){
                taskdata.updateTask(task);
              },
              longPressCallBack: (){
                taskdata.deleteTask(task);
              },
            );
          },
          itemCount:taskdata.taskCount,
        );
      }
    );
  }
}
