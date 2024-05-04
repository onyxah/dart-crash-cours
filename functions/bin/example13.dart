void main(List<String> args) {
  describeFully('Foo');
  describeFully('Baz', lastName: null);
  describeFully('Foo', lastName: 'Bar');
}

void describeFully(String firstname, { String? lastName = 'Bar',}){
  print('Hello $firstname $lastName');
}