void main(List<String> args) {
  final result = add();
  final result2 = add(3, 4);
  print(result);
  print(result2);
}

int add([int a = 1, int b = 2]) {
  return a + b;
}
