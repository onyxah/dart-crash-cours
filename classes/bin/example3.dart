void main(List<String> args) {
  final v = Vehicle(4);
  print(v);
  final bmw = Car();
  print(bmw);
  final yamaha = Bike();
  print(yamaha);
}

class Vehicle {
  final int wheelCount;
  const Vehicle(this.wheelCount);

  @override
  String toString() {
    /* if(runtimeType == Vehicle) {
      return 'Vehicle with $wheelCount wheels';
    }else{
      return super.toString();
    } */
    return '$runtimeType with $wheelCount wheels';
  }
}

class Car extends Vehicle {
  const Car() : super(4);
}

class Bike extends Vehicle {
  const Bike() : super(2);
}
