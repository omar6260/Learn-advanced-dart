void main() {
  assginigFunctionToVariable();
  passingFunctionToFunction();
  forEachExemple();
  iteratingOverMap();
  mappingOneCollectiontoAnother();
  filteringCollection();
  consolidatingCollection();
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
  final desserts = [''];
}
