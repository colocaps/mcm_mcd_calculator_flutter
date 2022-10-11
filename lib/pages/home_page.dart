import 'package:flutter/material.dart';
import 'package:multiplos_y_divisores/features/mcm_mcd_calculator/presentation/mcm_mcd_calculator_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: McmMcdCalculatorComponent(),
        ),
      ),
    );
  }
}
