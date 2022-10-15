import 'dart:convert';

import 'package:multiplos_y_divisores/entities/calculator_entity.dart';
import 'package:multiplos_y_divisores/features/home_module/domain/repositories/mcm_calculator_repository.dart';

class McmCalculatorRepositoryImpl implements McmCalculatorRepository {
  @override
  Future<CalculusEntity> getCalculators() async {
    String value =
        '{ "calculus": [  { "id": "1","calculusName": "Calcular M.C.M" },   { "id": "2", "calculusName": "Calcular M.C.D"     }]    }';
    var decode = jsonDecode(value);
    return _mapToCalculusEntity(decode);
  }

  static CalculusEntity _mapToCalculusEntity(Map<String, dynamic> value) {
    var list = value["calculus"] as List<dynamic>;
    var calculatorList = _mapToCalculatorEntity(list);

    return CalculusEntity(
      calculatorEntityList: calculatorList,
    );
  }

  static List<CalculatorEntity> _mapToCalculatorEntity(List<dynamic> list) {
    return list
        .map((e) => CalculatorEntity(
              calculusName: e['calculusName'],
              id: e['id'],
            ))
        .toList();
  }
}
