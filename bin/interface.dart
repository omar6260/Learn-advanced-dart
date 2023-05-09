void main() {
  final repository = DataRepository();
  final temperature = repository.fetchTemperature('Manila');
  print(temperature);

  final someClass = SomeClass();
  print(someClass.myFiield);
  someClass.myMethode();
}

abstract class DataRepository {
  factory DataRepository() => FakeWebServer();
  double fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double fetchTemperature(String city) {
    return 42.0;
  }
}

class AnotherClass {
  int myFiield = 42;
  void myMethode() => print(myFiield);
}

class SomeClass implements AnotherClass {
  @override
  int myFiield = 0;

  @override
  void myMethode() => print('hello');
}
