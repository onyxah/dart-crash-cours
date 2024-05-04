void main(List<String> args) {
  sayHelloTo();
  sayHelloTo(name: 'Bob');
  sayHelloTo(name: null);
}

void sayHelloTo({String? name}) {
  print('Hello $name');
}
