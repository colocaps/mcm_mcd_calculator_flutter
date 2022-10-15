import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:multiplos_y_divisores/features/home_module/domain/repositories/mcm_calculator_repository.dart';
import 'package:multiplos_y_divisores/features/home_module/presentation/home_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mcmCalculatorRepository =
        InjectorContainer.instance.resolve<McmCalculatorRepository>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 45,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text(
            'Calculadora M.C.M y M.C.D',
          ),
        ),
        // centerTitle: centerTitle,
      ),
      body: SafeArea(
        child: Center(
          child: HomeComponent(
            mcmCalculatorRepository: mcmCalculatorRepository,
          ),
        ),
      ),
    );
  }
}
