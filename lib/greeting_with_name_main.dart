import 'package:flutter/material.dart';
import 'package:future_func_ts/functions/greeting_with_name.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 100, child: TextField(controller: textEditingController)),
          ElevatedButton(
            onPressed: () async {
              String? nameInput = textEditingController.text;
              await Future.delayed(const Duration(seconds: 5));

              setState(() {
                standardName =
                    nameInput.isNotEmpty ? nameInput : 'No content found';
              });
              greetingWithName(nameInput);
            },
            child: const Text('Bitte Namen angeben'),
          ),
          Text('$greeting $standardName')
        ]),
      ),
    ));
  }
}
