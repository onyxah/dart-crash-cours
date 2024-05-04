void main(List<String> args) {
  describe();
  describe(something: null);
  describe(something: 'Hello World');
}

describe({
  String? something = 'Hello Wolrd',
}) {
  print(something);
}
