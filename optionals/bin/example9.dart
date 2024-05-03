void main(List<String> args) {
  String? lastName;

  void changeLastName() {
    lastName = 'Bar';
  }

  changeLastName();

  if (lastName?.contains('Bar')?? false) {
    print('It contains "Bar"');
  }else{
    print('It doesn\'t contain "Bar"');
  }
}
