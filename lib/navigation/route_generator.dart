import 'package:flutter/material.dart';
import '../features/authentication/screens/login.dart';
import '../features/init_screen/init_screen.dart';
import '../widgets/page_wrappers/bottom_nav_scaffold.dart';
import 'routes.dart';

class RouteGenerator {
  final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.init:
        return Page(const InitScreen());
      case Routes.login:
        return Page(const Login());
      case Routes.user:
        return Page(const BottomNavScaffold());
      default:
        return Page(const Login());
    }
  }
}

// ignore: non_constant_identifier_names
Route<dynamic> Page(Widget widget) {
  return MaterialPageRoute(builder: (_) => widget);
}