import 'package:multiplos_y_divisores/entities/calculator_entity.dart';

abstract class McmCalculatorRepository {
  Future<CalculusEntity> getCalculators();
}
