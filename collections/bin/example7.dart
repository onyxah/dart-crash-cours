import 'dart:collection';

void main(List<String> args) {
  final names = ['John', 'Paul', 'George', 'Ringo'];
  names.add('James');
  
  try {
    final readOnlyList = UnmodifiableListView(names);
    readOnlyList.add('Jill');
  } catch (e) {
    print(e);
  }
}
