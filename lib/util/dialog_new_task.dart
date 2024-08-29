import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DialogNewTask extends StatefulWidget {
  const DialogNewTask({super.key});

  @override
  State<DialogNewTask> createState() => _DialogNewTaskState();
}

class _DialogNewTaskState extends State<DialogNewTask> {
//   Future<DateTime> _selectDate(DateTime selectedDate) async {
//   DateTime _initialDate = selectedDate;
//   final DateTime? _pickedDate = await showDatePicker(
//       context: context,
//       initialDate: _initialDate,
//       firstDate: DateTime.now().subtract(Duration(days: 365)),
//       lastDate: DateTime.now().add(Duration(days: 365)));
// }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 19, 18, 18),
      content: Container(
        color: const Color.fromARGB(255, 19, 18, 18),
        height: 450,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              textAlign: TextAlign.left,
              'Task title',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10.0),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10.0),
            ),
            const Text(
              'Description',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Description of task',
                  border: OutlineInputBorder()),
              style: TextStyle(color: Colors.white70),
              dragStartBehavior: DragStartBehavior.start,
            )
          ],
        ),
      ),
    );
  }
}
