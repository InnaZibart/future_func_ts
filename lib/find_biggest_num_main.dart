import 'package:flutter/material.dart';
import 'package:future_func_ts/functions/find_biggest_num.dart';

void main() {
  runApp(const MaterialApp(home: MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController bigNumController1 = TextEditingController();
  TextEditingController bigNumController2 = TextEditingController();

  String ergebnisBiggestNum = "Das Ergebnis lautet";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 71, 204, 237),
          title: const Text('The biggest number'),
        ),
        body: Column(
          children: [
            const Text('Gib hier zwei Zahlen ein'),
            TextField(
              textAlign: TextAlign.center,
              controller: bigNumController1,
              keyboardType: TextInputType.number,
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: bigNumController2,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () async {
                  int bigNumberOne = int.parse(bigNumController1.text);
                  int bigNumberTwo = int.parse(bigNumController2.text);

                  int result = await biggestNumber(bigNumberOne, bigNumberTwo);

                  setState(() {
                    ergebnisBiggestNum = "Ergebnis: $result";
                  });
                },
                child: const Text('Definieren')),
            const SizedBox(
              height: 15,
            ),
            Text(ergebnisBiggestNum),
          ],
        ));
  }
}
