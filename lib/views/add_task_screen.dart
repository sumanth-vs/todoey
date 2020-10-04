import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class AddTaskScreen extends StatefulWidget {
  final Function appendTask;
  AddTaskScreen({this.appendTask});

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String name;

  @override
  Widget build(BuildContext context) {
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
              widget.appendTask(name);
            },
            child: Text('Add'),
            color: Colors.blue[300],
          ),
        ],
      ),
    );
  }
}
