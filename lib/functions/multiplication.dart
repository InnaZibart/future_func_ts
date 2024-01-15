int multiplyResult = 0;
String resultText = 'Das Ergebnis ist';

Future<int> multiply(int multiplyNumOne, int multiplyNumTwo) async {
  await Future.delayed(Duration(seconds: 5));
  multiplyResult = multiplyNumOne * multiplyNumTwo;
  return multiplyResult;
}
