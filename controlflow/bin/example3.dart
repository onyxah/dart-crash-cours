void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];
  for (final name in names) {
    print(name);
  }

  print('-----------------');

  for(final value in Iterable.generate(20)){
    print(value);
  }
}
