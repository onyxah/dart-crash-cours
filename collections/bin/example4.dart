void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 30,
  };
  print(info);
  print(info['name']);
  print(info['age']);
  print('---------------------------------------');

  print(info.keys);
  print(info.values);
  print('---------------------------------------');

  info.putIfAbsent('height', () => 180);
  print(info);
  print('---------------------------------------');

  info['height'] = 190;
  print(info);
  print('---------------------------------------');

  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
  }
  print('---------------------------------------');

  if(info.containsKey('height')) {
    print('Height is ${info['height']}');
  }else{
    print('Height is not found');
  }
  print('---------------------------------------');
  
  print(info['weight']);
  print('---------------------------------------');

  final mapWithIntKeys = {10:30, 20:10};
  print(mapWithIntKeys);
  print(mapWithIntKeys[10]);
  print('---------------------------------------');
}
