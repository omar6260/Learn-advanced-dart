
void main() {
  trimingExemple();
  caseExemple();
  paddingExemple();
  csvFileLineExemple();
  replacingExemple();
  multilineExemple();
  basicStringManipulationExercise2();

  stringBuffer();
  buildingStringExercise();
  stringValidition();
  regularExpression();
  matchingAnySingleCharacter();
  matchingMultipleCharacters();
  matchingTheBeginingAndEnd();
  validationPassword();
}

void caseExemple() {
  const userInput = 'OUMAR.FALL@TUKKIJAMM.COM';
  final lowercase = userInput.toLowerCase();
  print(lowercase); // oumar.fall@tukkijamm.com
}

// Addingb and removing at the ends
void trimingExemple() {
  const userInput = ' Oumar Fall Mobile developer.  ';
  final trimend = userInput.trim();
  print(trimend); // Oumar Fall Mobile developer.
}

// Padding
void paddingExemple() {
  final time = Duration(hours: 1, minutes: 2, seconds: 3);
  final hours = time.inHours;
  final minutes = '${time.inMinutes % 60}'.padLeft(2, '0');
  final seconds = '${time.inSeconds % 60}'.padLeft(2, '0');
  final timmeString = '$hours:$minutes:$seconds';
  print(timmeString); // 1:02:03
}

// Splitting and Joining
void csvFileLineExemple() {
  const csvFileLine = 'Oumar,Fall,23,Dakar,Senegal';
  final fields = csvFileLine.split(',');
  final joind = fields.join('-');
  print(fields);
  print(joind);
}

// Replacing

void replacingExemple() {
  const phrase = 'live and learn';
  final withUnderscores = phrase.replaceAll(' ', ',');
  print(withUnderscores);
}

/* Take a multiline string, such as the text below, and split it into a list of single lines. Hint: Split at the newline
character.
 */

void multilineExemple() {
  const country = '''
France
USA
Germany
Benin
China
Mexico
Mongolia''';

  final spliting = country.split('\n');
  print(spliting);
}

/* Find an emoji online to replace :] with in the following text: */
void basicStringManipulationExercise2() {
  const original = "How's the Dart book going? ;]";
  final replaced = original.replaceAll(';]', '✅');
  print(replaced);
}

void stringBuffer() {
  final message = StringBuffer();
  message.write('Hello');
  message.write(' my name is ');
  message.write('Oumar');
  message.toString();

  for (int i = 2; i <= 1024; i *= 2) {
    print(i);
  }

  final buffer = StringBuffer();
  for (int i = 2; i <= 1024; i *= 2) {
    buffer.write(i);
    buffer.write(' ');
  }

  print(buffer);
}

void buildingStringExercise() {
  final buffer = StringBuffer();
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      if (j == i) {
        buffer.write('');
      } else {
        buffer.write('*');
      }
    }
    buffer.write('\n');
  }
  print(buffer);
}

// String Validation

void stringValidition() {
  const text = 'I love Dart';
  print(text.startsWith('I'));
  print(text.endsWith('Dart'));
  print(text.contains('love'));
  print(text.contains('Flutter'));
}

// Regular Expressions

/*hasMatch returns true if the regex pattern matches the input string. In this case, both
concatenation and cats contain the substring cat , so these return true , whereas dog
returns false because it doesn’t match the string literal cat .
An alternative method to accomplish the same task would be to use the contains method
on String like you did earlier:
 */
void regularExpression() {
  final regex = RegExp('cat');
  print(regex.hasMatch('concatenation'));
  print(regex.hasMatch('dog'));
  print(regex.hasMatch('cats'));
  print('concatenation'.contains(regex));
  print('dog'.contains(regex));
  print('cats'.contains(regex));
}

// Matching Any Single Character

void matchingAnySingleCharacter() {
  final matchSingle = RegExp('c.t');
  final optionalSingle = RegExp('c.?t');
  print('cat'.contains(matchSingle));
  print('cot'.contains(matchSingle));
  print('cut'.contains(matchSingle));
  print('ct'.contains(matchSingle));

  print('cat'.contains(optionalSingle));
  print('cot'.contains(optionalSingle));
  print('cut'.contains(optionalSingle));
  print('ct'.contains(optionalSingle));
}

// Matching Multiple Characters

void matchingMultipleCharacters() {
  final onOrMore = RegExp('wo+w');
  print(onOrMore.hasMatch('ww'));
  print('wow'.contains(onOrMore));
  print(onOrMore.hasMatch('wooow'));
  print('woooow'.contains(onOrMore));
  final zeroOnMore = RegExp('wo*w');
  print(zeroOnMore.hasMatch('ww'));
  print('wow'.contains(zeroOnMore));
  print(zeroOnMore.hasMatch('woooow'));
  final anyOneMore = RegExp('w.+w');
  print(anyOneMore.hasMatch('ww'));
  print(anyOneMore.hasMatch('wow'));
  print(anyOneMore.hasMatch('w123w'));
  print(anyOneMore.hasMatch('wABCDEFGw'));
}

// Matching Sets of Characters
void matchingSetCharacters() {
  final set = RegExp('b[oa]');
  print(set.hasMatch('bat'));
  print(set.hasMatch('bot'));
  print(set.hasMatch('but'));
  print(set.hasMatch('boat'));
  print(set.hasMatch('bt'));

  final letters = RegExp('[a-zA-Z]');
  print(letters.hasMatch('a')); // true
  print(letters.hasMatch('H')); // true
  print(letters.hasMatch('3z')); // true
  print(letters.hasMatch('2')); // false

  /* The regex '[a-zA-Z]' contains two ranges: all of the lowercase letters from a to z and all
of the uppercase letters from A to Z . There will be a match as long as the input string
has at least one lower or uppercase letter.
If you want to specify which characters not to match, add ^ just after the left bracket:*/

  final excluded = RegExp('b[^ao]t');
  print(excluded.hasMatch('bat')); // false
  print(excluded.hasMatch('bot')); // false
  print(excluded.hasMatch('but')); // true
  print(excluded.hasMatch('boat')); // false
  print(excluded.hasMatch('bt'));
}

/* Matching the Beginning and End
If you want to validate that a phone number contains only numbers, you might expect to
use the following regular expression: */

void matchingTheBeginingAndEnd() {
  final numbers = RegExp('r[0-9]');
  print(numbers.hasMatch('5552021'));
  print('abcefg2'.contains(numbers));
}

// Example: Validating a Password

void validationPassword() {
  const password = 'Password1234';
  final lowercase = RegExp(r'[a-z]');
  final upercase = RegExp(r'[A-Z]');
  final number = RegExp(r'[0-9]');

  if (!password.contains(lowercase)) {
    print('Your password must have a lowercase letter');
  } else if (!password.contains(upercase)) {
    print('Your password must have an uppercase letter!');
  } else if (!password.contains(number)) {
    print('Your password must have a number!');
  } else {
    print('Your password is OK.');
  }

  if (password.length < 12) {
    print('Your password must be at least 12 characters long!');
  }
}
