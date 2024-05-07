import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {
    'John',
    'Paul',
    'George',
    'Ringo',
  };

  names.add('Paul');
  print(names);

  print('---------------------------------------');
  final names2 = [
    'John',
    'Paul',
    'George',
    'Ringo',
    'Paul',
  ];

  final uniqueNames = {...names2};
  print(names2);
  print(uniqueNames);

  print('---------------------------------------');

  final foo1 = 'Foo';
  var foo2 = 'Foo';
  print(foo1.hashCode);
  print(foo2.hashCode);

  print('---------------------------------------');

  if(names.contains('Paul')) {
    print('Paul is in the list');
  }else{
    print('Paul is not in the list');
  }

  print('---------------------------------------');

  final ages1 = {20, 30, 40, 50};
  final age2 = {20, 30, 40, 50};

  if(ages1 == age2) {
    print('ages1 == age2');
  }else{
    print('ages1 != age2');
  }

  print('---------------------------------------');

  if(SetEquality().equals(ages1, age2)){
    print('ages1 == age2');
  }else{
    print('ages1 != age2');
  }
}
