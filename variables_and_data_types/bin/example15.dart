void main(List<String> args) {
  const int someInteger = 10;
  print(someInteger);
  const double someDouble = 10.5;
  print(someDouble);
  const String someString = 'Hello, World!';
  print(someString);
  const bool someBool = true;
  print(!someBool);
  const List<int> someList = [1, 2, 3, 4, 5];
  print(someList);
  const Map<String, int> someMap = {'a': 1, 'b': 2, 'c': 3, 'd': 4, 'e': 5};
  print(someMap['a']);
  const Set<int> someSet = {1, 2, 3, 4, 5};
  print(someSet.length);
  const dynamic someNull = null;
  print(someNull);
  const Symbol someSymbol = #someNull;
  print(someSymbol);
}
