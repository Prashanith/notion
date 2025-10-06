import 'package:flutter/material.dart';
import '../../navigation/route_generator.dart';
import '../../navigation/routes.dart';
import '../../services/init_services.dart';
import '../../widgets/page_wrappers/plain_scaffold.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  void navigate() {
    print("hehehe");final router = locator<RouteGenerator>();
    Future.delayed(
      Duration(milliseconds: 1500),
      () => router.navigator.currentState?.pushNamed(Routes.user),
    );
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => navigate());
    return const PlainScaffold(widget: Text('Notion'));
  }
}
