void main(List<String> args) {
  const yourName = 'Foo';
  const myName = 'Bar';
  if (yourName == myName) {
    print('We have the same name!');
  } else if (yourName == 'Foo') {
    print('Your name is Foo');
  } else if (yourName == 'Bar' && myName == 'Bar') {
    print('Your name is Bar and my name is Bar');
  }else {
    print('something else');
  }
}
