import 'package:flutter/material.dart';
import 'tasks_title.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskList>(builder: (context, taskList, child) {
      return ListView.builder(
        itemCount: taskList.taskCount,
        itemBuilder: (context, index) {
          final task = taskList.tasks[index];
          return TaskTitle(
            tastTitle: task.name,
            isChecked: task.getIsDone(),
            checkboxCallback: (bool isChecked) {
              taskList.updateTask(task);
            },
            deleteCallback: () {
              taskList.deleteTask(task);
            },
          );
        },
      );
    });
  }
}
