void main(List<String> args) {
  final names = ['John', 'Paul', 'George', 'Ringo'];
  final upperCaseNames = names.map((name) {
    print('Map got called');
    return name.toUpperCase();
  });

  for (final name in upperCaseNames) {
    print(name);
  }
}
