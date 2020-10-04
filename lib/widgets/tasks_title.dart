import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final bool isChecked;
  final String tastTitle;
  final Function checkboxCallback;

  TaskTitle({this.isChecked, this.tastTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$tastTitle',
        style: TextStyle(
          decoration: (isChecked) ? TextDecoration.lineThrough : null,
        ),
      ),
      leading: Checkbox(
        value: isChecked,
        activeColor: Colors.blue[300],
        onChanged: checkboxCallback,
      ),
    );
  }
}
