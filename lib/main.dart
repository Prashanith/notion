import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notion/firebase_options.dart';
import 'package:notion/navigation/route_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Notion());
}

class Notion extends StatelessWidget {
  const Notion({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notion',
      init onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
