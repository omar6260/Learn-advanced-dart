void main() {
  print(Coin(true));
  print(Coin(false));
  print(Coin(null));
}

class Coin {
  bool? side;
  Coin(this.side);
}


