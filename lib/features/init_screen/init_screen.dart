import 'package:flutter/material.dart';
import 'package:notion/widgets/page_wrappers/plain_scaffold.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PlainScaffold(widget: Center(child: Text('Notion')));
  }
}
