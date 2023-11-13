void checkBirthday(
    DateTime date,
    ({
      String name,
    }) person) {
  if (person.name == 'Oumar' && date.month == 9 && date.day == 09) {
    print('Happy Birthday, ${person.name}');
  }
}

Future<void> main() async {
 
  // checkBirthday(DateTime.now(), (name: 'Oumar'));
  // print(myFuture);
  
}



// Future<int> countTheAtoms();

// final myFuture = Future<int>.delayed(
//         Duration(seconds: 1),
//         // 3
//         () => 42)
//     .then(
//       (value) => print('Value: $value'),
//     )
//     .catchError(
//       (Object error) => print('Error $error'),
//     )
//     .whenComplete(() => print('Future is complete'));

