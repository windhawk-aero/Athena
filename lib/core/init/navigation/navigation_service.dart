import 'package:flutter/widgets.dart';

class NavigationService {
  static NavigationService? _instance;
  static NavigationService? get instance {
    _instance ??= NavigationService._init();
    return _instance;
  }

  NavigationService._init();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  
  // ignore: prefer_function_declarations_over_variables
  final bool Function(Route<dynamic>) removeAllOldRoutes = (route) {
    return false;
  };
}
