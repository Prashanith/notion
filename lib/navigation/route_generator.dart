import 'package:flutter/material.dart';
import 'package:notion/features/authentication/screens/login.dart';
import 'package:notion/features/init_screen/init_screen.dart';
import 'package:notion/features/user/screen/profile.dart';
import 'package:notion/navigation/routes.dart';

class RouteGenerator {
  final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.init:
        return Page(const InitScreen());
      case Routes.login:
        return Page(const Login());
      case Routes.user:
        return Page(const Profile());
      default:
        return Page(const Login());
    }
  }
}

// ignore: non_constant_identifier_names
Route<dynamic> Page(Widget widget) {
  return MaterialPageRoute(builder: (_) => widget);
}