///This is an example of call method in dart
///use case :if we have a class with single method this
class Validate {
  bool call(String value) => value.length > 6;
}

void main() {
  Validate validate = Validate();
  bool isValidate = validate("12345"); // without validate.call("12345")
  print(isValidate); //output : false
}
