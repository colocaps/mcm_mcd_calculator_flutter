import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multiplos_y_divisores/features/home_module.dart';
import 'package:multiplos_y_divisores/features/home_module/home_component_initializer.dart';

import 'application/application.dart';
import 'ioc_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  await _registerDependencies();

  runApp(const Application());
}

Future<void> _registerDependencies() async {
  IoCManager.registerDependencies();
  await HomeModule.registerDependencies();
  await HomeComponentInitializer.registerDependencies();
}
