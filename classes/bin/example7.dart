void main(List<String> args) {
  print(Car.carsInstantiated);
  Car(name: 'My car');
  print(Car.carsInstantiated);
  Car(name: 'Your car');
    print(Car.carsInstantiated);
}

class Car {
  static int _carInstantiated = 0;

  static int get carsInstantiated => _carInstantiated;
  static void incrementCarsInstantiated() => _carInstantiated++;

  final String name;

  Car({
    required this.name,
  }) {
    incrementCarsInstantiated();
  }
}
