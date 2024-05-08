void main(List<String> args) {
  describe(animalType(fromStr: 'rabbit'));
  describe(animalType(fromStr: 'cat'));
  describe(animalType(fromStr: 'dog'));
  describe(animalType(fromStr: 'horse'));
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.rabbit:
      print('This is a rabbit');
      break;
    case AnimalType.dog:
      print('This is a dog');
      break;
    case AnimalType.cat:
      print('This is a cat');
      break;
      
    default:
    print('This is not a cat, dog or rabbit');
  }
}

AnimalType? animalType({required String fromStr}) {
  try {
    return AnimalType.values.firstWhere(
      (element) => element.name == fromStr,
    );
  } catch (e) {
    print(e);
    return null;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}
