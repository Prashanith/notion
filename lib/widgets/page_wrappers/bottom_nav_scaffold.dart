import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../features/time/features/stopwatch/screens/stop_watch.dart';

class BottomNavScaffold extends StatefulWidget {
  const BottomNavScaffold({super.key});

  @override
  State<BottomNavScaffold> createState() => _BottomNavScaffoldState();
}

class _BottomNavScaffoldState extends State<BottomNavScaffold> {
  int currentIndex = 0;

  Widget getWidget(int i) {
    switch (i) {
      case 0:
        return StopWatch();
      default:
        return StopWatch();
    }
  }

  String getTitle(int i) {
    switch (i) {
      case 0:
        return 'Stop Watch';
      case 1:
        return 'Timer';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(getTitle(currentIndex))),
      body: getWidget(currentIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        height: 90,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (i) => setState(() {
              currentIndex = i;
            }),
            items: [
              BottomNavigationBarItem(
                icon: Icon(LucideIcons.layoutDashboard),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(LucideIcons.watch),
                label: 'Stopwatch',
              ),
              BottomNavigationBarItem(
                icon: Icon(LucideIcons.alarmClock),
                label: 'Alarm',
              ),
              BottomNavigationBarItem(
                icon: Icon(LucideIcons.user),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
