void main(){
  final original = 'I like extensions!';
  final secret = original.encoded;
  final revealed = secret.decoded;
  print(secret);
  print(revealed);

  print(5.cubed);
}

String encode(String input) {
  final output = StringBuffer();
  for (final codePoint in input.runes) {
    output.writeCharCode(codePoint + 1);
  }
  return output.toString();
}

extension on String {
  String get encoded => _code(1);
  String get decoded => _code(-1);

  String _code(int step) {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint + step);
    }
    return output.toString();
  }
}

extension on int {
  int get cubed {
    return this * this * this;
  }
}
