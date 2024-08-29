import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskly/bottom_nav.dart';
import 'package:taskly/main.dart';
import 'package:taskly/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (ctx) => const BottomNav(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 10, 10, 10),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'images/taskly.png',
                        width: 130.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 5)),
                    Text(
                      'Taskly',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    // const CircularProgressIndicator(
                    //   color: Colors.white,
                    //   strokeCap: StrokeCap.round,
                    // )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
