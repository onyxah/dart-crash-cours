void main(List<String> args) {
  describePerson();
  describePerson( name: 'Foo');
  describePerson(age: 42);
  describePerson(name: 'Foo', age: 42);
}

void describePerson({
  String? name,
  int? age,
}) {
  print('Hello, $name you are $age years old');
}
