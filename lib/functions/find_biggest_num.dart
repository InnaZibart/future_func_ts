int result = 0;

Future<int> biggestNumber(bigNumberOne, bigNumberTwo) async {
  await Future.delayed(Duration(seconds: 3));
  if (bigNumberOne > bigNumberTwo) {
    return bigNumberOne;
  } else {
    return bigNumberTwo;
  }
}
