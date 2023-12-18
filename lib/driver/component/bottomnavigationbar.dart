import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wastewise/driver/pages/home.dart';
import 'package:wastewise/driver/pages/route.dart';
import 'package:wastewise/driver/pages/status.dart';
import 'package:wastewise/driver/pages/settings.dart';

class DriverBottomNavBar extends StatefulWidget {
  const DriverBottomNavBar({Key? key}) : super(key: key);

  @override
  State<DriverBottomNavBar> createState() => _DriverBottomNavBarState();
}

class _DriverBottomNavBarState extends State<DriverBottomNavBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    DriverHome(),
    RouteOverview(),
    CollectionStatus(),
    DriverSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.lightGreen,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.map,
                text: 'Route Overview',
              ),
              GButton(
                icon: Icons.playlist_add_check,
                text: 'Collection Status',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              _navigateBottomBar(index);
            },
          ),
        ),
      ),
    );
  }
}
