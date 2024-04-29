void main(List<String> args) {
  late final myValue = 10;
  print(myValue);

  late final yourvalue = getValue();
  print('We are here');
  print(yourvalue);

  // expectations :
  //we are here
  // getValue called
  // 10
}

int getValue() {
  print('getValue called');
  return 10;
}
