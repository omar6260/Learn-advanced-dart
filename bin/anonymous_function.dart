void main() {
  assginigFunctionToVariable();
  passingFunctionToFunction();
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

void returningFunctionsFromFunctions() {
  Function nameFunction() {
    return () => print('Hello');
  }
}
