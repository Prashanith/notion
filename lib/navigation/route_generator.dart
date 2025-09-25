import 'package:flutter/material.dart';
import 'package:notion/navigation/routes.dart';

class RouteGenerator {
  final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.init:
        return Page(const InitScreen());
      case Routes.login:
        return Page(const AuthenticationScreen());
      case Routes.user:
        return Page(const User());
      default:
        return Page(const AuthenticationScreen());
    }
  }
}

Route<dynamic> Page(Widget widget) {
  return MaterialPageRoute(builder: (_) => widget);
}