import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('---------------------------------------');
  testCanonicalizedList();
  print('---------------------------------------');
  testCombinedIterableView();
  print('---------------------------------------');
  testCombinedListView();
  print('---------------------------------------');
  testCombinedMapView();
  print('---------------------------------------');
  testMapMerge();
}

void testMapMerge() {
  final info1 = {
    'name': 'John',
    'age': 30,
    'height': 180,
  };
  final info2 = {
    'name': 'John',
    'age': 31,
    'height': 1.8,
    'weight': 80,
  };
  final merge = mergeMaps(info1, info2,value: (one, two) => one,);
  print(merge);
}

void testCombinedMapView() {
  // CombinedMapView is a view of a map of maps, and is unmodifiable
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'b': 4, 'c': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};
  var combined = CombinedMapView({
    map1,
    map2,
    map3,
  });
  print(combined);
  print(combined['a']);
  print(combined['b']);
  print(combined['c']);
  print(combined['d']);
  print(combined['e']);
  print(combined['f']);

  try {
    combined['f'] = 10;
  } catch (e) {
    print(e);
  }
}

void testCombinedListView() {
  // CombinedListView is a view of a list of lists, and is unmodifiable
  final swedishNames = ['Sven', 'Karl', 'Gustav'];
  final englishNames = ['James', 'Paul', 'George'];
  final frenchNames = ['Jean', 'Pierre', 'Michel'];
  final names = CombinedListView([swedishNames, englishNames, frenchNames]);
  print(names);
  englishNames.add('Ringo');
  swedishNames.removeAt(0);
  print(names);
  if (names.contains('Ringo')) {
    print('Ringo is in the list');
  }
  try {
    names.add('Jill');
  } catch (e) {
    print(e);
  }
}

void testCombinedIterableView() {
  final Iterable<int> one = [1, 2, 3];
  final two = [10, 20, 30];
  final Iterable<int> three = [100, 200, 300];
  var combined = CombinedIterableView([
    one,
    two,
    three,
  ]);
  print(combined);
  two.add(40);
  print(combined);
  print(combined.length);
  print(combined.isEmpty);
  print(combined.contains(50));
  print(combined.contains(10));
}

void testCanonicalizedList() {
  final info = {
    'name': 'John',
    'age': 30,
    'sex': 'male',
    'address': 'Main Street, 123',
  };
  final canonMap = CanonicalizedMap.from(info, (key) => key.length);
  print(canonMap);
}

void testBoolList() {
  final boolList = BoolList(
    10,
    growable: true,
  );
  print(boolList);
  boolList[3] = true;
  if (boolList[3]) {
    print('The 3th element is true');
  } else {
    print('The 3th element is false');
  }
  print(boolList);
  boolList.length *= 2;
  print(boolList);
}
