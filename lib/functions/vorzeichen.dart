int result = 0;

Future<int> prefixChange(int number) async {
  await Future.delayed(Duration(seconds: 3));
  result = number * (-1);
  return result;
}
