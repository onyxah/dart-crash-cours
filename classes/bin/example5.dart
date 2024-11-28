void main(List<String> args) {
  final car = Car();
  car.drive(speed: 100);
  print('Current speed: ${car.speed}');
  car.stop();
}

class Car {
  int speed = 0;

  void drive({required int speed,}){
    this.speed = speed;
    print('Accelerating to $speed');
  }

  void stop(){
    speed = 0;
    print('Stopping...');
  }
}
