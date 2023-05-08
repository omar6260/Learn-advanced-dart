void main() {
  final jon = Person('John', 'Snow');
  final jane = Student('Jane', 'Snow');
  print(jon.fullName);
  print(jane.fullName);

  final historyGrade = Grade.B;
  jane.gardes.add(historyGrade);
  print(jane.gardes);

  final child = SomeChild();
  child.doSomeWork();

  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');
  print(jessie);
  print(marty);

  challenge1();
}

enum Grade { A, B, C, D, F }

class Person {
  Person(this.givenName, this.surname);

  String givenName;
  String surname;
  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}

class Student extends Person {
  Student(super.givenName, super.surname);

  var gardes = <Grade>[];
  @override
  String get fullName => '$givenName $surname';
}

class SomeParent {
  void doSomeWork() {
    print('parent working');
  }
}

class SomeChild extends SomeParent {
  @override
  void doSomeWork() {
    super.doSomeWork();
    print('child doing other work');
  }
}

class SchoolBandMember extends Student {
  SchoolBandMember(super.givenName, super.surname);

  static const minimuPraticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(super.givenName, super.surname);

  bool get isEligible => gardes.every((garde) => garde != Grade.F);
}

void challenge1() {
  final fruit = Fruit('yellow');
  final melon = Melon('blue');
  final watermelon = Watermelon('red and green');
  final cantaloupe = Cantaloupe('orange');
  fruit.describeColor();
  melon.describeColor();
  watermelon.describeColor();
  cantaloupe.describeColor();
}

class Fruit {
  Fruit(this.color);
  final String color;

  void describeColor() {
    print('this fruit color is $color');
  }
}

class Melon extends Fruit {
  Melon(super.color);
}

class Cantaloupe extends Melon {
  Cantaloupe(super.color);
}

class Watermelon extends Melon {
  Watermelon(String color) : super(color);

  @override
  void describeColor() {
    print('The color of this watermelon is $color.');
  }
}
