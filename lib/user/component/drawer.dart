import 'package:flutter/material.dart';
import 'package:wastewise/user/component/listtile.dart';

// user drawer: user profile, feedback & recommendations, statistics, help center & about us

class UserDrawer extends StatelessWidget {
  final void Function()? onUserProfileTap;
  final void Function()? onUserFeedbackTap;
  final void Function()? onStatisticsTap;
  final void Function()? onUserHelpCenterTap;
  final void Function()? onAboutUsTap;
  // final void Function()? onSignOut;
  const UserDrawer({
    Key? key,
    required this.onUserProfileTap,
    required this.onUserFeedbackTap,
    required this.onStatisticsTap,
    required this.onUserHelpCenterTap,
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

              // User Profile List Tile
              UserListTile(
                icon: Icons.manage_accounts,
                text: 'User Profile',
                onTap: onUserProfileTap,
              ),

              // User Feedback List Tile
              UserListTile(
                icon: Icons.comment,
                text: 'Feedback and Recommendations',
                onTap: onUserFeedbackTap,
              ),

              // User Help Center List Tile
              UserListTile(
                icon: Icons.help,
                text: 'Help Center',
                onTap: onUserHelpCenterTap,
              ),

              // About Us List Tile
              UserListTile(
                icon: Icons.groups,
                text: 'About Us',
                onTap: onAboutUsTap,
              ),

              // Logout List Tile
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: UserListTile(
                  icon: Icons.logout,
                  text: 'Log Out',
                  onTap: onUserProfileTap,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
