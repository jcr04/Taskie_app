import 'package:flutter/material.dart';
import 'package:taskie_appp/views/splash_screen.dart';

void main() {
  runApp(const TaskieApp());
}

class TaskieApp extends StatelessWidget {
  const TaskieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskie',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Splashscreen(),
    );
  }
}
