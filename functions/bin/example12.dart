void main(List<String> args) {
  makeUpperCase();
  makeUpperCase(null);
  makeUpperCase('Foo');
  makeUpperCase('Foo', 'Bar');
  // makeUpperCase('Foo', null);
  makeUpperCase(null, 'Bar');
}

void makeUpperCase([
  String? name,
  String lastName = 'Doe',
]) {
  print(name?.toUpperCase() ?? 'null' + ' ' + lastName.toUpperCase());
}
