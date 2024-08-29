import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:taskly/bottom_nav.dart';
import 'package:taskly/pages/home_page.dart';
import 'package:flutter/services.dart';
import 'package:taskly/pages/profile_page.dart';
import 'package:taskly/pages/task_page.dart';
import 'package:taskly/splash_screen.dart';

void main() async {
  // locking the orientation of the device
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
