void main(List<String> args) {
  final whiskers = AnimalType.cat;

  switch (whiskers) {
    case AnimalType.cat:
      print('This is a cat');
      break;
    case AnimalType.dog:
    case AnimalType.rabbit:
      print('This is not');
      break;

  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}
