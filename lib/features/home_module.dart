import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:multiplos_y_divisores/pages/home_page.dart';

abstract class HomeModule {
  static late final NavigationManager _navigationManager;

  static registerDependencies() {
    _navigationManager =
        InjectorContainer.instance.resolve<NavigationManager>();
  }

  static const String homeRoute = '/home';

  static Map<String, WidgetBuilder> generateRoutes() {
    return {
      homeRoute: (context) => const HomePage(),
    };
  }

  static Future<T?> navigateToHome<T, TArgs>(
    BuildContext context,
    TArgs args,
  ) {
    return _navigationManager.pushNamedAndRemoveUntil(
      context,
      homeRoute,
      (homeRoute) => false,
      args: args,
    );
  }
}
