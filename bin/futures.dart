import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

void main() {
  // futureType();
  // usingCallbacks();
  // usingAsyncAwait();
  // usingAysncAwaitWithErrorHanding();
  asynchronousNetworkRequest();
}

Future<void> futureType() async {
  final numberOfAtoms = await countTheAtoms();
  print(numberOfAtoms);

  final myFuture = Future<int>.delayed(Duration(seconds: 1), () => 42);
  print(myFuture);
}

Future<int> countTheAtoms() async {
  return 771508362;
}

Future<void> usingCallbacks() async {
  print('Before the future');

  final myFuture = Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  )
      .then(
        (value) => print('Value: $value'),
      )
      .catchError((Object error) => print('Error: $error'))
      .whenComplete(() => print('Future is complete'));
  print('After Future $myFuture');
}

Future<void> usingAsyncAwait() async {
  final value = await Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  );
  print('Value: $value');

  print('After the future');
}

Future<void> usingAysncAwaitWithErrorHanding() async {
  print('Before the future');

  try {
    final value = await Future<int>.delayed(Duration(seconds: 1), () => 42);
    print('Value: $value');
  } catch (error) {
    print(error);
  } finally {
    print('Future id complete');
  }

  print('After the future');
}

Future<void> asynchronousNetworkRequest() async {
  try {
    final url = 'https://jsonplaceholder.typicode.com/todos/1';
    final parseUrl = Uri.parse(url);
    final response = await http.get(parseUrl);
    final statusCode = response.statusCode;
    if (statusCode != 200) {
      throw HttpException('$statusCode');
    }
    final jsonString = response.body;
    dynamic jsonMap = jsonDecode(jsonString);
    final todo = Todo.fromJson(jsonMap);
    print(todo);
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
}

class Todo {
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.complete,
  });

  factory Todo.fromJson(Map<String, dynamic> jsonMap) {
    return Todo(
      userId: jsonMap['userId'] as int,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      complete: jsonMap['complete'] as bool,
    );
  }

  final int id;
  final int userId;
  final String title;
  final bool complete;

  @override
  String toString() {
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'complete: $complete';
  }
}
