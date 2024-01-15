import 'package:flutter/material.dart';

import 'package:future_func_ts/functions/multiplication.dart';

void main() {
  runApp(const MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController numberOne = TextEditingController();
  TextEditingController numberTwo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text('Multiplication'),
        ),
        body: Column(children: [
          const SizedBox(height: 25),
          const Text("Bitte gib zwei Zahlen an"),
          TextField(
            textAlign: TextAlign.center,
            controller: numberOne,
            keyboardType: TextInputType.number,
          ),
          TextField(
            textAlign: TextAlign.center,
            controller: numberTwo,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () async {
                int multiplyNumOne = int.parse(numberOne.text);
                int multiplyNumTwo = int.parse(numberTwo.text);
                {
                  await multiply(multiplyNumOne, multiplyNumTwo);
                }

                setState(() {
                  resultText = "Ergebnis: $multiplyResult";
                });
              },
              child: const Text('Berechnen')),
          const SizedBox(
            height: 15,
          ),
          Text(resultText),
        ]));
  }
}
