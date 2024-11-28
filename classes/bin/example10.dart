void main(List<String> args) {
}

abstract class Vehicle {
  final VehicleKind kind;

  const Vehicle({
    required this.kind,
  });

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is decelerating');
}

class Car extends Vehicle {
  Car():super(kind: VehicleKind.car);
  
}

class Motorcycle implements Vehicle {
  @override
  void accelerate() {
    void accelerate() => print('$kind is accelerating');
  }

  @override
  void decelerate() {
    void decelerate() => print('$kind is decelerating');
  }

  @override
  // TODO: implement kind
  VehicleKind get kind => throw UnimplementedError();
  
}

enum VehicleKind {
  car,
  truck,
  motorcycle,
}
