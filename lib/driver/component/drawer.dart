import 'package:flutter/material.dart';
import 'package:wastewise/driver/component/listtile.dart';

// driver drawer: driver profile, help center & about us

class DriverDrawer extends StatelessWidget {
  final void Function()? onDriverProfileTap;
  final void Function()? onHelpCenterTap;
  final void Function()? onAboutUsTap;
  // final void Function()? onSignOut;
  const DriverDrawer({
    Key? key,
    required this.onDriverProfileTap,
    required this.onHelpCenterTap,
    required this.onAboutUsTap,
    // required this.onSignOut,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
            // Drawer Header
              const DrawerHeader(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 60,
                ),
              ),

              // Driver Profile List Tile
              DriverListTile(
                icon: Icons.manage_accounts,
                text: 'Driver Profile',
                onTap: onDriverProfileTap,
              ),

              // Help Center List Tile
              DriverListTile(
                icon: Icons.help,
                text: 'Help Center',
                onTap: onHelpCenterTap,
              ),

              // About Us List Tile
              DriverListTile(
                icon: Icons.groups,
                text: 'About Us',
                onTap: onAboutUsTap,
              ),

              // Logout List Tile
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: DriverListTile(
                  icon: Icons.logout,
                  text: 'Log Out',
                  onTap: onDriverProfileTap,
                  // onTap: onSignOut,
                ),
              ),
          ],
          ),
        ],
      ),
    );
  }
}
