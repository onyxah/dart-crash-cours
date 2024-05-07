void main(List<String> args) {
  const names = ['John', 'Paul', 'George', 'Ringo'];

  for (final name in names) {
    print(name);
  }

  print('---------------------------------------');

  for (final name in names.reversed) {
    print(name);
  }

  print('---------------------------------------');

  if (names.contains('John')) {
    print('John is in the list');
  }

  print('---------------------------------------');

  names
      .where((String name) => name.startsWith('P'))
      .forEach((name) => print(name));

  print('---------------------------------------');

  for (final name in names.where((String name) => name.startsWith('G'))) {
    print(name);
  }

  print('---------------------------------------');

  print(names[0]);
  print(names[1]);
  print(names[2]);
  print(names[3]);

  print('---------------------------------------');

  try {
    print(names[5]);
  } catch (e) {
    print(e);
  }

  print('---------------------------------------');

  names.sublist(1).forEach(print);
  print('---------------------------------------');
  names.sublist(1, 3).forEach(print);
  print('---------------------------------------');
  names.sublist(1, 3).reversed.forEach(print);
  print('---------------------------------------');

  final ages = [20, 30, 40];
  ages.add(50);
  ages.add(60);
  print(ages);
  print('---------------------------------------');
  const names1 = ['John', 'Paul', 'George', 'Ringo'];
  const names2 = ['John', 'Paul', 'George', 'Ringo'];
  if (names1 == names2) {
    print('names 1 is equal to name2');
  } else {
    print('name1 is not equal to name2');
  }

  print('---------------------------------------');

  names.map((str) => str.toUpperCase()).forEach(print);
  print('---------------------------------------');
  names.map((str) => str.length).forEach(print);

  print('---------------------------------------');

  final numbers = [1, 2, 3];
  final sum = numbers.fold(
    0,
    (
      previousValue,
      thisValue,
    ) =>
        previousValue + thisValue,
  );
  print(sum);

  print('---------------------------------------');

  final totalLength = names.fold(
    0,
    (
      totalLength,
      str,
    ) =>
        str.length + totalLength,
  );
  print(totalLength);

  print('---------------------------------------');

  final result = names.fold(
    '',
    (
      result,
      str,
    ) =>
        '$result ${str.toUpperCase()}',
  );
  print(result);
}
