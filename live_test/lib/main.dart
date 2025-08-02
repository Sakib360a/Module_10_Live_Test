import 'package:flutter/material.dart';
import 'package:live_test/screens/live_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Module10 Live Test',
      home: LiveTest(),
    );
  }
}
