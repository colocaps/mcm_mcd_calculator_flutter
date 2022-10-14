import 'package:flutter/material.dart';
import 'package:multiplos_y_divisores/features/home_module/presentation/home_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: const SafeArea(
        child: Center(
          child: HomeComponent(),
        ),
      ),
    );
  }
}
