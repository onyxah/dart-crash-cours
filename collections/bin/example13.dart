void main(List<String> args) {
  final string = 'abracadabra';
  var result = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }..removeAll([null]);

  print(result);
  print('---------------------------------------');

  final allNumbers = Iterable.generate(100);
  final evenNumber = [
    for (final number in allNumbers)
      if (number.isEven) number
  ];
  final evenNumbersFunctional = allNumbers.where((number) => number.isEven);

  final oddNumbers = [
    for (final number in allNumbers)
      if (!number.isEven) number
  ];

  final oddNumbersFunctional = allNumbers.where((number) => !number.isEven);

  print(evenNumber);
  print(evenNumbersFunctional);
  print(oddNumbers);
  print(oddNumbersFunctional);
}
