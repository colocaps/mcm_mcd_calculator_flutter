class CalculatorEntity {
  final String calculusName;
  final String id;

  CalculatorEntity({
    required this.calculusName,
    required this.id,
  });
}

class CalculusEntity {
  final List<CalculatorEntity> calculatorEntityList;

  CalculusEntity({required this.calculatorEntityList});
}
