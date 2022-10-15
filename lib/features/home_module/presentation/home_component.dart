import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:multiplos_y_divisores/entities/calculator_entity.dart';
import 'package:multiplos_y_divisores/features/home_module.dart';
import 'package:multiplos_y_divisores/features/home_module/domain/repositories/mcm_calculator_repository.dart';

class HomeComponent extends StatelessWidget {
  final McmCalculatorRepository _mcmCalculatorRepository;
  const HomeComponent({
    Key? key,
    required McmCalculatorRepository mcmCalculatorRepository,
  })  : _mcmCalculatorRepository = mcmCalculatorRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CalculusEntity>(
      future: _mcmCalculatorRepository.getCalculators(),
      builder: (BuildContext context, AsyncSnapshot<CalculusEntity> snapshot) {
        List<CalculatorEntity> calculatorEntityList = [];
        calculatorEntityList = snapshot.data!.calculatorEntityList;
        return Container(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: calculatorEntityList.length,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(5),
              child: CustomElevatedButton(
                label: calculatorEntityList[index].calculusName,
                onTap: () {
                  if (index == 0) {
                    HomeModule.navigateToMcmPage(context, '');
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
