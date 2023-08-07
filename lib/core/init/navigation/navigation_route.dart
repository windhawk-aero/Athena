import 'package:flutter/material.dart';

import '../../../view/_helpers/not_found_navigation_view.dart';
import '../../../view/splash_view/splash_view.dart';
import '../../constants/navigation/navigation_constants.dart';

class NavigationRoute {
  static NavigationRoute? _instance;
  static NavigationRoute? get instance {
    _instance ??= NavigationRoute._init();
    return _instance;
  }

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstant.root:
        return defaultNavigate(const SplashView(), NavigationConstant.root);
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundNavigationView(),
        );
    }
  }

  MaterialPageRoute defaultNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }
}