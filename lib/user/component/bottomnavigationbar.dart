import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wastewise/user/pages/home.dart';
import 'package:wastewise/user/pages/status.dart';
import 'package:wastewise/user/pages/schedule.dart';
import 'package:wastewise/user/pages/settings.dart';

class UserBottomNavBar extends StatefulWidget {
  const UserBottomNavBar({Key? key}) : super(key: key);

  @override
  State<UserBottomNavBar> createState() => _UserBottomNavBarState();
}

class _UserBottomNavBarState extends State<UserBottomNavBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHome(),
    BinStatus(),
    SchedulePickup(),
    UserSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.lightGreen,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            backgroundColor: Colors.lightGreen,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.white24,
            gap: 8,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              _navigateBottomBar(index);
            },
            padding: EdgeInsets.all(16.0),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.delete,
                text: 'Bin Status',
              ),
              GButton(
                icon: Icons.schedule,
                text: 'Schedule Pickup',
              ),
              GButton(
                icon: Icons.comment,
                text: 'Feedback',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
