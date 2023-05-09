void main() {
  // final animal = Animal();
  final platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  platypus.layEggs();
  print(platypus);
  challenge1();
}

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() => "I'm a $runtimeType";
}

class Platypus extends Animal {
  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }

  void layEggs() {
    print('Plop plop');
  }
}

void challenge1() {
  final database = LocalStorage();
  database.save('42');
  print(database.retrieve());

  final cloud = CloudStorage();
  cloud.save('24');
  print(cloud.retrieve());
}

abstract class Storage {
  void save(String data) {
    print('Data storage not implemented');
  }

  String retrieve() {
    print('object');
    return '';
  }
}

class LocalStorage extends Storage {
  String _data = '';

  @override
  void save(String data) {
    print('Saving "$data" in a local databes');
    _data = data;
  }

  @override
  String retrieve() {
    print('Retrieving data from the database');
    return _data;
  }
}

class CloudStorage extends Storage {
  String _data = '';

  @override
  void save(String data) {
    print('Saving "$data" to the cloud...');
    _data = data;
  }

  @override
  String retrieve() {
    print('Retrieving data from the cloud...');
    return _data;
  }
}
