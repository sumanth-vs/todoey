import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('data'),
      leading: Checkbox(value: false, onChanged: null),
    );
  }
}
