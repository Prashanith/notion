import 'package:flutter/material.dart';

class BottomNavScaffold extends StatefulWidget {
  const BottomNavScaffold({super.key});

  @override
  State<BottomNavScaffold> createState() => _BottomNavScaffoldState();
}

class _BottomNavScaffoldState extends State<BottomNavScaffold> {
  int currentIndex = 0;

  String getTitle(int i) {
    switch (i) {
      case 0:
        return 'Chats';
      case 1:
        return 'Friends';
      case 2:
        return 'Notifications';
      case 3:
        return 'Profile';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset(
            'assets/comment.png',
            fit: BoxFit.scaleDown,
            scale: 0.5,
          ),
        ),
        leadingWidth: 45,
        title: Text(getTitle(currentIndex),),
      ),
      body: [
      ][currentIndex],
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
                // BottomNavigationBarItem(
                    // icon: LineIcon.user(), label: 'Profile'),
              ]),
        ),
      ),
    );
  }
}