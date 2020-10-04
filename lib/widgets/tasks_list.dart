import 'package:flutter/material.dart';
import 'tasks_title.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
      ],
    );
  }
}
