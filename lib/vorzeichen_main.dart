import 'package:flutter/material.dart';
import 'package:future_func_ts/functions/vorzeichen.dart';

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
  TextEditingController numberController = TextEditingController();

  String gibZahlEin = 'Gib eine Zahl ein';
  String textSign = "Das Ergebnis ist ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text("Change sign"),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(gibZahlEin),
          TextField(
            textAlign: TextAlign.center,
            controller: numberController,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 25),
          ElevatedButton(
              onPressed: () async {
                int number = int.parse(numberController.text);
                {
                  await prefixChange(number);
                }
                setState(() {
                  textSign = 'Ergebnis: $result';
                });
              },
              child: Text(textSign))
        ]));
  }
}
