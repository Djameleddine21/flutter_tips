///Using multiple future concurrently

Future<bool> getBool() => Future.value(true);

Future<String> getString() => Future.value("Djamel");

Future<int> getInt() => Future.value(20);

void main() async {
  //call futures concurrently
  final result = await Future.wait([
    getBool(),
    getString(),
    getInt(),
  ]);
  print(result); //[true, Djamel, 20]
}
