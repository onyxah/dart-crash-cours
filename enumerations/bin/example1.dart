void main(List<String> args) {
  final woof = Animal(
    name: 'Woof',
    type: AnimalType.dog,
  );

  if (woof.type == AnimalType.dog) {
    print('Woof is a dog');
  } else if (woof.type != AnimalType.cat) {
    print('Woof is not a cat');
  } 

  switch(woof.type){
    
    case AnimalType.rabbit:
      print('This is a rabbit');
      break;
    case AnimalType.dog:
      print('This is a dog');
      break;
    case AnimalType.cat:
      print('This is a cat');
      break;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}

class Animal {
  final String name;
  final AnimalType type;

  Animal({
    required this.name,
    required this.type,
  });
}
