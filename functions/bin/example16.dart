void main(List<String> args) {
  final foo = doSomething(10, 20);
  print(foo());
}

int Function() doSomething(int a, int b) => () => a + b;
