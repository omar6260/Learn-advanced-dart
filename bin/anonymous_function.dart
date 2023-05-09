void main() {
  assginigFunctionToVariable();
  passingFunctionToFunction();
  forEachExemple();
  iteratingOverMap();
  mappingOneCollectiontoAnother();
  filteringCollection();
  consolidatingCollection();
  sortingList();
  combiningHigherOrderMethods();
  exerciseOne();
  exerciseTow();
  voidCallBack();
  valueSetterCallBack();
  valueGetterCallBack();
  typedefs();
  closures();
  countingFunction();
}

void assginigFunctionToVariable() {
  int number = 4;
  String greeting = 'Hello';
  bool isHungry = true;

  Function multiply = (int a, int b) {
    return a * b;
  };
}

void passingFunctionToFunction() {
  void namedFunction(Function, anonymouseFunction) {
    // print function
  }
}

// returning function from function
void returningFunctionsFromFunctions() {
  Function nameFunction() {
    return () => print('Hello');
  }
}

void forEachExemple() {
  const number = [1, 2, 3];
  number.forEach((number) {
    print(3 * number);
  });

  for (final number in number) {
    print(3 * number);
  }
}

void iteratingOverMap() {
  final flowerColor = {'red': 'yellow', 'green': 'orange'};
  flowerColor.forEach((flower, color) {
    print('$flower are $color');
  });

  print('i \u2764 Dart');
  print('and so do you');
}

void mappingOneCollectiontoAnother() {
  const numbers = [2, 4, 6, 8, 10];

  final looped = <int>[];
  for (final x in numbers) {
    looped.add(x * x);
    print(looped);
  }

  final mapped = numbers.map((x) => x * x);
  print(mapped.toList());
}

void filteringCollection() {
  final myList = [1, 2, 3, 4, 5, 6];
  final odds = myList.where((element) => element.isOdd);
  print(odds);
}

void consolidatingCollection() {
  const event = [2, 4, 6, 8, 10, 12];
  final total = event.reduce((sum, element) => sum + element);
  print(total);
// using fold

  const evens = [2, 4, 6, 8, 10, 12];
  final totals = evens.fold<int>(0, (sum, element) => sum + element);
  print(totals);
}

void sortingList() {
  final desserts = ['cookies', 'pie', 'dounts', 'brownies'];
  desserts.sort();
  print(desserts);
  desserts.sort((d1, d2) => d1.length.compareTo(d2.length));
}

void combiningHigherOrderMethods() {
  const desserts = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallDesserts = desserts
      .where((desserts) => desserts.length > 5)
      .map((desserts) => desserts.toUpperCase())
      .toList();
  print(bigTallDesserts);
}

void exerciseOne() {
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort((a, b) => b.compareTo(a));
  print('Hightest to lowest: $scores');
  final heightest = scores.first;
  final lowest = scores.last;
  print(heightest);
  print(lowest);
}

void exerciseTow() {
  const scores = [89, 77, 46, 93, 82, 67, 32, 88];
  final bigTallScore = scores.where((scores) => scores >= 80 && scores < 90);
  print(bigTallScore);
}
// Callback Functions

class Button {
  Button({required this.title, required this.onPressed});

  final String title;
  final Function onPressed;
}

void voidCallBack() {
  final myButton = Button(
      title: 'Click me',
      onPressed: () {
        print('clicked');
      });

  myButton.onPressed();
  myButton.onPressed.call();

  // final anotherButton = Button(
  //     title: 'Click me, too!',
  //     onPressed: (int apple) {
  //       print('Clicked');
  //       return 42;
  //     });
  // anotherButton.onPressed();
}

class MyWidget {
  MyWidget({required this.onTouch});
  final void Function(String xPosition) onTouch;
}

void valueSetterCallBack() {
  final myWidget = MyWidget(
    onTouch: (x) => print(x),
  );
  myWidget.onTouch('Omar FALL');
}

class AnotherWidget {
  AnotherWidget({this.timeStamp});
  final String Function()? timeStamp;
}

void valueGetterCallBack() {
  final myWidget = AnotherWidget(
    timeStamp: () => DateTime.now().toIso8601String(),
  );

  final timeStamp = myWidget.timeStamp?.call();
  print(timeStamp);
}

class SateManager {
  int _counter = 0;

  void handleButtonClick() {
    _counter++;
  }
}

void exempleHandleButton() {
  final manager = SateManager();
  final myButton = Button(
    title: 'Click me',
    onPressed: manager.handleButtonClick,
  );
  myButton.onPressed();
  const cities = ['Istanbul', 'Ankara', 'Izmir', 'Bursa', 'Antalya'];
  cities.forEach((city) => print(city));

  cities.forEach(print);
}

class Gizmo {
  Gizmo({
    required this.builder,
  });

  final MapBuilder builder;
}

typedef MapBuilder = Map<String, int> Function(List<int>);
typedef ZipCode = int;

void typedefs() {
  final gizmo = Gizmo(builder: (list) => {'hi': list.first});

  ZipCode code = 87101;
  int number = 42;

  print(code is ZipCode);
  print(code is int);
  print(number is ZipCode);
  print(number is int);
}

void closures() {
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
  };

  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  print(counter);

  final counter1 = countingFunction();
  final counter2 = countingFunction();
  print(counter1());
  print(counter2());
  print(counter1());
  print(counter1());
  print(counter2());
}

Function countingFunction() {
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
    return counter;
  };
  return incrementCounter;
}
