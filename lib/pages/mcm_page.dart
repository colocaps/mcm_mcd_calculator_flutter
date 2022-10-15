import 'package:flutter/material.dart';
import 'package:multiplos_y_divisores/features/home_module.dart';
import 'package:multiplos_y_divisores/features/mcm_calculator/presentation/mcm_calculator_component.dart';

class McmPage extends StatelessWidget {
  const McmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            HomeModule.navigateToHome(context, '');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        toolbarHeight: 45,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text(
            'Calcular M.C.M',
          ),
        ),
        // centerTitle: centerTitle,
      ),
      body: const McmCalculatorComponent(),
    );
  }
}
