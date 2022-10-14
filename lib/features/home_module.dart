import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:multiplos_y_divisores/pages/home_page.dart';
import 'package:multiplos_y_divisores/pages/mcm_page.dart';

abstract class HomeModule {
  static late final NavigationManager _navigationManager;

  static registerDependencies() {
    _navigationManager =
        InjectorContainer.instance.resolve<NavigationManager>();
  }

  static const String homeRoute = '/home';
  static const String mcmRoute = '/mcm-route';
  static const String mcdRoute = '/mcd_route';

  static Map<String, WidgetBuilder> generateRoutes() {
    return {
      homeRoute: (context) => const HomePage(),
      mcmRoute: (context) => const McmPage(),
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

  static Future<T?> navigateToMcmPage<T, TArgs>(
    BuildContext context,
    TArgs args,
  ) {
    return _navigationManager.pushNamedAndRemoveUntil(
      context,
      mcmRoute,
      (mcmRoute) => false,
      args: args,
    );
  }
}
