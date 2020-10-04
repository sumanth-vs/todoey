import 'package:flutter/material.dart';
import 'tasks_title.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) => TaskTitle(
        tastTitle: widget.tasks[index].name,
        isChecked: widget.tasks[index].getIsDone(),
        checkboxCallback: (bool checkboxState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        },
      ),
    );
  }
}
