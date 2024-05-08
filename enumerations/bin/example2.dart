void main(List<String> args) {
  final foo = Person(
    car: Car.teslaModelS,
    name: 'Foo',
  );

  switch(foo.car){
    
    case Car.teslaModelX:
     print('Foo is a Tesla Model X = ${foo.car}');
    case Car.teslaModelS:
     print('Foo is a Tesla Model S = ${foo.car}');
  }
}

class Person {
  final String name;
  final Car car;

  Person({
    required this.name,
    required this.car,
  });
}

enum Car {
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'Model X',
    year: 2020,
  ),
  teslaModelS(
    manufacturer: 'Tesla',
    model: 'Model S',
    year: 2019,
  );

  final String manufacturer;
  final String model;
  final int year;

  const Car({
    required this.manufacturer,
    required this.model,
    required this.year,
  });

  @override
  String toString() => 'Car(manufacturer: $manufacturer, model: $model, year: $year)';
}
