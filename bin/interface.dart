void main() {
  final repository = DataRepository();
  final temperature = repository.fetchTemperature('Manila');
  print(temperature);

  final someClass = SomeClass();
  print(someClass.myFiield);
  someClass.myMethode();

  challenge1();

  challenge2();
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

void challenge1() {
  final botle = Bottle();
  botle.open();
}

abstract class Bottle {
  factory Bottle() => SodaBotle();
  void open();
}

class SodaBotle implements Bottle {
  @override
  void open() {
    print('hello Oumar');
  }
}

void challenge2() {
  final database = DataStorage();
  final note = database.findNote(42);
  final allNotes = database.allNotes();
  database.saveNote('Water the flowers.');
  print(note);
  print(allNotes);
}

abstract class DataStorage {
  factory DataStorage() => FakeDatabase();
  String findNote(int id);
  List<String> allNotes();
  void saveNote(String note);
}

class FakeDatabase implements DataStorage {
  @override
  String findNote(int id) {
    return 'This is a note.';
  }

  @override
  List<String> allNotes() {
    return [
      'This is a note.',
      'This is another note.',
      'Buy milk.',
      'Platypuses are nice.',
    ];
  }

  @override
  void saveNote(String note) {}
}
