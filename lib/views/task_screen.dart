import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/views/add_task_screen.dart';
import 'package:todoey/widgets/tasks_list.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            isScrollControlled: true,
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Colors.blue[300],
        child: Icon(Icons.add),
      ),
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
                  '12 remaining.',
                  style: kSubTitleTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: kTodoCardStyle,
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
