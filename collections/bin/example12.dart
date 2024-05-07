void main(List<String> args) {
  addToArrayWrong();
  print('---------------------------------------');
  addToArrayRight();
  print('---------------------------------------');
  try {
    addDictionaryWrong();
  } catch (e) {
    print(e);
  }
  print('---------------------------------------');
  addDictionaryRight();
}

void addToArrayWrong() {
  final names1 = ['John', 'Paul', 'George', 'Ringo'];
  final names2 = ['John1', 'Paul1', 'George1', 'Ringo1'];
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToArrayRight() {
  final names1 = ['John', 'Paul', 'George', 'Ringo'];
  final names2 = ['John1', 'Paul1', 'George1', 'Ringo1'];
  final allNamesRight = [...names1, ...names2];
  print(names1);
  print(names2);
  print(allNamesRight);
  final anotherWay = {...names1}..addAll(names2);
  print(anotherWay);
}

void addDictionaryWrong() {
  // adding to const will crash
  const info = {
    'name': 'John',
    'age': 30,
    'height': 180,
  };

  final result = info;
  result.addAll({'weight': 80});
}

void addDictionaryRight() {
  final info = {
    'name': 'John',
    'age': 30,
    'height': 180,
  };
  //final result = {...info, 'weight': 80};
  final result = {...info}..addAll({'weight': 80});
  print(result);
}
