String standardName = "-";
String nameInput = "";
String greeting = "Hello";

Future<void> greetingWithName(String nameInput) async {
  print(greeting + nameInput);
}
