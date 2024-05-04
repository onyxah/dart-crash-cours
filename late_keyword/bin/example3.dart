void main(List<String> args) {
  final Person person = Person();
  print(person.age);
  print(person.description);
}

class Person {
  final int age;
  late String description = heavyCalculationOfDescription();

  Person({
    this.age = 18,
  }) {
    print('Constructor is called');
  }

  String heavyCalculationOfDescription() {
    print('Function "heavyCalculationOfDescription" is called');
    return 'Foo Bar';
  }
}
