void main(List<String> args) {
  const me = Person('Bob', 20);
  print(me.name);
  print(me.age);

  const foo = Person.foo();
  print(foo.name);
  print(foo.age);

  const bar = Person.bar(age: 30);
  print(bar.name);
  print(bar.age);

  const baz = Person.other();
  print(baz.name);
  print(baz.age);

  const john = Person.other(name: 'John');
  print(john.name);
  print(john.age);

  const jill = Person.other(name: 'Jill', age: 25);
  print(jill.name);
  print(jill.age);
}

class Person {
  final String name;
  final int age;
  const Person(
    this.name,
    this.age,
  );

  const Person.foo()
      : name = 'Foo',
        age = 20;

  const Person.bar({
    required this.age,
  }) : name = 'Bar';

  const Person.other({
    String? name,
    int? age,
  })  : age = age ?? 30,
        name = name ?? 'Baz';
}
