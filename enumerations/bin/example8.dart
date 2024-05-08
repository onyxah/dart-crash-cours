void main(List<String> args) {
  print(TeslaCars.values);
  print([...TeslaCars.values]..sort());
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelS(weightInKg: 2550),
  modelX(weightInKg: 3560),
  model3(weightInKg: 7300),
  modelY(weightInKg: 500),
  ;

  final double weightInKg;

  const TeslaCars({
    required this.weightInKg,
  });

  @override
  int compareTo(TeslaCars other) => weightInKg.compareTo(
        other.weightInKg,
      );
}
