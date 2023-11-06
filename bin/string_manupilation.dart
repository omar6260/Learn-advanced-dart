void main() {
  stringManupilation();
  addingAndRemove();
  addingTrimmedLeft();
  removieTrimRight();
  addPadding();
}

void stringManupilation() {
  const userInput = 'aPoNgRsTuVw@eMpLE.CoM';
  final lowercase = userInput.toLowerCase();
  print(lowercase);
}

void addingAndRemove() {
  const userInput = '221B Baker St.  ';
  final trimmed = userInput.trim();
  print(trimmed);
}

void addingTrimmedLeft() {
  const userInput = '   Oumar Fall';
  final trimmed = userInput.trimLeft();
  print(trimmed);
}

void removieTrimRight() {
  const userInput = 'I love Flutter   ';
  final trimmed = userInput.trimRight();
  print(trimmed);
}

void addPadding() {
  final time = Duration(hours: 1, minutes: 32, seconds: 57);
  final hours = time.inHours;
  final minutes = time.inMinutes % 60;
  final seconds = time.inSeconds % 60;
  final timeString = '$hours:$minutes:$seconds';
  print(timeString);
}
