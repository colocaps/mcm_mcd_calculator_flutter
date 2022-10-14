import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:multiplos_y_divisores/features/home_module.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List calculesList = [
      'Calcular M.C.M',
      'Calcular M.C.D',
    ];

    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: calculesList.length,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(5),
          child: CustomElevatedButton(
            label: calculesList[index],
            onTap: () {
              if (index == 0) {
                HomeModule.navigateToMcmPage(context, '');
              }
            },
          ),
        ),
      ),
    );
  }
}
