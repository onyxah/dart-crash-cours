// ignore_for_file: type_literal_in_constant_pattern

void main(List<String> args) {
  print(fullName('John', 'Doe'));
}

String fullName(String? firstName, String? lastName) =>
    '${firstName.orDefault} ${lastName.orDefault}';

extension DefaultValues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case String:
        return '' as T;
      case bool:
        return false as T;
      default:
        throw Exception('No default value for type: $T');
    }
  }
}
