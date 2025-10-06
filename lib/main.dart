import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'navigation/route_generator.dart';
import 'navigation/routes.dart';
import 'services/init_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceInitializer.initializeServices();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.web);
  runApp(const Notion());
}

class Notion extends StatelessWidget {
  const Notion({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notion',
      initialRoute: Routes.init,
      navigatorKey: locator.get<RouteGenerator>().navigator,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
