///This is an example of null aware operator in dart language
///use-case : minimize the code, Ui as code in flutter
///Note : This is note Null-Safety
class User {
  String name;
  int age;

  User({this.name, this.age = 20});
}

void main() {
  User user;
  print(user.name); //output : ERROR (user is null)
  //null-aware acces : check if user is null os ignore it
  print(user?.name); //output : null
  //null operator
  user = null ?? User(name: "Djamel");
  //null aware assignnmeny
  user ??= User(name: "Abdelhadi");
  print(user.name); //output : Djamel
}
