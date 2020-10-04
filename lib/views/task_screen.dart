import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/views/add_task_screen.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'package:todoey/models/task.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.blue[300],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Todoey',
                  style: kTitleTextStyle,
                ),
                SizedBox(height: 20),
                Text(
                  '${tasks.length} remaining.',
                  style: kSubTitleTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: kTodoCardStyle,
              child: TasksList(
                tasks: tasks,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (context) => AddTaskScreen(
              appendTask: (value) {
                setState(() {
                  tasks.add(
                    Task(name: value),
                  );
                });
                Navigator.pop(context);
              },
            ),
          );
        },
        backgroundColor: Colors.blue[300],
        child: Icon(Icons.add),
      ),
    );
  }
}
