// ignore_for_file: type_literal_in_constant_pattern

void main(List<String> args) {
  describe(1);
  describe(1.1);
  describe('Hello');
  describe(true);
  describe(const {'key': 'value'});
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print('this is an int');
      break;
    case double:
      print('this is a double');
      break;
    case String:
      print('this is a string');
      break;
    case bool:
      print('this is a bool');
      break;
    case const (Map<String, String>):
      print('this is a map');
      break;
    default:
      print('this is a default');
  }
}
