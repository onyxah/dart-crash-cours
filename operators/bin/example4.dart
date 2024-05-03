void main(List<String> args) {
  // binary infix operators
  const age = 50;
  print(age + 20);
  print(age - 20);
  print(age * 20);
  print(age / 20);
  print(age ~/ 20);
  print(age % 20);
  print(age == 20);
  print(age!= 20);

  print(age > 20);
  print(age >= 20);
  print(age < 20);
  print(age <= 20);

  // bitwise infix operators
  print(age & 20); // bitwise AND 1 & 1 = 1, 0 & 1 = 0, 0 & 0 = 0,
  print(age | 20); // bitwise OR 1 | 1 = 1, 0 | 1 = 1, 0 | 0 = 0,
  print(age ^ 20); // bitwise XOR 1 ^ 1 = 0, 0 ^ 1 = 1, 0 ^ 0 = 0,

  print(age << 20); // bitwise left shift 1 << 1 = 2, 
  print(age >> 20); // bitwise right shift 1 >> 1 = 0,

  
}
