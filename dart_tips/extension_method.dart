///This is an example of extension method in dart language

extension MyExtension on int {
  //check if the number is positif
  bool isPostif() => this > 0;
}

void main() {
  int a = 5;
  print(a.isPostif()); //output : true
}
