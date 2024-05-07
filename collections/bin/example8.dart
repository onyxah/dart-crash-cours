import 'dart:collection';

void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 30,
    'adresse': {
      'street': 'Main Street',
      'number': 123,
      'city': 'New York',
    },
  };

  final info2 = UnmodifiableMapView(info);

  info.addAll(
    {
      'height': 180,
      'phone': 123456789,
    },
  );

  print(info);
  try {
     info2.addAll(
    {
      'height': 180,
      'phone': 123456789,
    },
  );
  } catch (e) {
    print(e);
  }
}
