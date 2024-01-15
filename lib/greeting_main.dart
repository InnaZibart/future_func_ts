import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  Future<void> greeting() async {
    await Future.delayed(Duration(seconds: 3));
    print('Hello World!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("$greeting"),
        ),
      ),
    );
  }
}
