import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksVeiw extends StatefulWidget {
  const TasksVeiw({super.key});

  @override
  State<TasksVeiw> createState() => _TasksVeiwState();
}

class _TasksVeiwState extends State<TasksVeiw> {
  @override
  Widget build(BuildContext context) {
    void _close() {
      return Navigator.pop(context, true);
    }

    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Container(
        color: const Color.fromARGB(255, 12, 12, 12),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 260,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.purpleAccent]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            _close();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.only(right: 20.0),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        Center(
                          child: Text(
                            'Details project',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Task title',
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 15,
                                          decoration: TextDecoration.none),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              color: const Color.fromARGB(255, 12, 12, 12),
            ))
          ],
        ),
      ),
    );
  }
}
