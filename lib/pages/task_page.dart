import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskly/util/dialog_new_task.dart';
import 'package:taskly/widgets/task_tile.dart';
import 'package:taskly/widgets/urgent_task_card.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  void createNewtask() {
    showDialog(
      context: context,
      builder: (context) => DialogNewTask(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createNewtask();
        },
        backgroundColor: Colors.white12,
        //circle shaped float action button
        shape: const CircleBorder(side: BorderSide.none),
        child: const Icon(
          Icons.add_rounded,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Tasks',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          // temporary list will be generated later
          itemCount: 4,
          itemBuilder: (ctx, index) => const TaskTile()),
    );
  }
}
