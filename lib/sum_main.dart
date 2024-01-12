import 'package:flutter/material.dart';

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
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  String zahlenEingabe = "Gebe zwei Zahlen ein";
  String ergebnisText = "Ergebnis: Summe";

  int numberOne = 0;
  int numberTwo = 0;
  int result = 0;

  Future<int> sumNumbers(numberOne, numberTwo) async {
    await Future.delayed(const Duration(seconds: 2));
    result = numberOne + numberTwo;
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text("Addition"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(zahlenEingabe),
            TextField(
              textAlign: TextAlign.center,
              controller: textEditingController1,
              keyboardType: TextInputType.number,
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: textEditingController2,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () async {
                  numberOne = int.parse(textEditingController1.text);
                  numberTwo = int.parse(textEditingController2.text);
                  {
                    await sumNumbers(numberOne, numberTwo);
                  }
                  setState(() {
                    ergebnisText = "Ergebnis: $result";
                  });
                },
                child: const Text('Berechnen')),
            const SizedBox(
              height: 15,
            ),
            Text(ergebnisText),
          ],
        ));
  }
}
