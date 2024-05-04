void main(List<String> args) {
  print('late fullName is being initialized');
  late final fullName = getFullName();
  final resolvedFullName = fullName;
  print('After fullName is initialized: $resolvedFullName');
}

String getFullName() {
  print('getFullName() is called');
  return 'John Doe';
}