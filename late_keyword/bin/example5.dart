void main(List<String> args) {
  final Person person = Person();
  person.description = 'Description 1';
  print(person.description); // Description 1
  person.description = 'Description 2';
  print(person.description); // Description 2

  final Dog dog = Dog();
  dog.description = 'Description 3';
  print(dog.description); // Description 3
  try {
    dog.description = 'Description 4';
    print(dog.description); // Description 4
  } catch (e) {
    print(e);
  }
}

class Person {
  late String description;
}

class Dog {
  late final String description;
}
