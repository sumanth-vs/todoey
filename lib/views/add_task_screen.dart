import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            style: kSubTitleTextStyle.copyWith(color: Colors.blue[300]),
            textAlign: TextAlign.center,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              name = value;
            },
          ),
          FlatButton(
            onPressed: () {
              Provider.of<TaskList>(context, listen: false).addTask(name);
              Navigator.pop(context);
            },
            child: Text('Add'),
            color: Colors.blue[300],
          ),
        ],
      ),
    );
  }
}
