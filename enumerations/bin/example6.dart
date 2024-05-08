void main(List<String> args) {
  AnimalType.cat.jump();
  AnimalType.dog.jump();
  AnimalType.rabbit.jump();

  try {
    AnimalType.fish.jump();
  } catch (e) {
    print(e);
  }
}

mixin CanJump {
  int get feetCount;
  void jump() {
    if (feetCount < 1) {
      throw Exception('Can\'t jump');
    } else {
      print('I can jump $feetCount feet');
    }
  }
}

enum AnimalType with CanJump {
  cat(feetCount: 4),
  dog(feetCount: 4),
  rabbit(feetCount: 4),
  fish(feetCount: 0),
  ;

  @override
  final int feetCount;

  const AnimalType({required this.feetCount});
}
