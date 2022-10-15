import 'package:core/core.dart';
import 'package:multiplos_y_divisores/features/home_module/data/mcm_calculator_repository_impl.dart';
import 'package:multiplos_y_divisores/features/home_module/domain/repositories/mcm_calculator_repository.dart';

abstract class HomeComponentInitializer {
  static registerDependencies() {
    var injector = InjectorContainer.instance;

    injector.registerFactory<McmCalculatorRepository>(
      () => McmCalculatorRepositoryImpl(),
    );
  }
}
