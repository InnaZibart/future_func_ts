import 'package:flutter/material.dart';

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

  List<int> standardList = [];
  List<int> numberInput = [];
  int result = 0;

  int listNumbers(List<int> numberInput) {
    for (int numbers in numberInput) {
      result += numbers;
    }
    return result;
  }

  String standardName = "-";
  String nameInput = "";
  String greeting = "Hello";

  Future<void> greetingWithName(String nameInput) async {
    print(greeting + nameInput);
  }

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
