void main(List<String> args) {
  final vehicle = VehicleType.car;

  switch (vehicle) {
    case VehicleType.motorcycle:
    case VehicleType.bike:
    case VehicleType.scooter:
    case VehicleType.car:
      print('Most Common personal vehicles');
      break;
    case VehicleType.truck:
      print('Most Common commercial vehicles');
      break;
  }
}

enum VehicleType {
  car,
  truck,
  bike,
  scooter,
  motorcycle,
}
