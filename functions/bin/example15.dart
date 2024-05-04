void main(List<String> args) {
  print(performOperation(1, 2, minus));
  print(performOperation(1, 2, add));
}

int performOperation(int a, int b,int Function(int,int) operations) => a + b;

int minus([int a = 6, int b = 2]) => a - b;
int add([int a = 1, int b = 2]) => a + b;
