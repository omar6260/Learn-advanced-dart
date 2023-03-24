// Changing the Case
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
