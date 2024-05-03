void main(List<String> args) {
  String? firsName = 'John';
  String? lastName = 'Doe';

  final fullName = firsName.flatMap(
    (f) => lastName.flatMap((l) => '$f $l'),
  ) ?? 'Either first or last name is null';
  print(fullName);
}

extension FlatMap<T> on T? {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}
