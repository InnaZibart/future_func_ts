String zahlenEingabe = "Gebe zwei Zahlen ein";
String ergebnisText = "Ergebnis: Summe";

int numberOne = 0;
int numberTwo = 0;
int result = 0;

Future<int> sumNumbers(numberOne, numberTwo) async {
  await Future.delayed(const Duration(seconds: 3));
  result = numberOne + numberTwo;
  return result;
}
