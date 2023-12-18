import 'package:flutter/material.dart';
import 'package:wastewise/outro/about.dart';
import 'package:wastewise/driver/component/drawer.dart';
import 'package:wastewise/driver/component/bottomnavigationbar.dart';
import 'package:wastewise/driver/pages/helpcenter.dart';
import 'package:wastewise/driver/pages/profile.dart';

// user bnb: home, bin locations, schedule pickup, settings
// user drawer: user profile, feedback & recommendations, statistics, help center & about us
// driver bnb: dashboard, route overview, collection status, settings
// driver drawer: driver profile, help center & about us

class DriverHome extends StatefulWidget {
  const DriverHome({super.key});

  @override
  State<DriverHome> createState() => _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome> {

  // Navigate to Driver Profile Page
  void goToDriverProfile() {
    // Pop menu drawer
    Navigator.pop(context);

    // Go to Driver Profile Page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DriverProfile(),
      ),
    );
  }

  // Navigate to Driver Help Center Page
  void goToDriverHelpCenter() {
    // Pop menu drawer
    Navigator.pop(context);

    // Go to Help Center Page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DriverHelpCenter(),
      ),
    );
  }

  // Navigate to About Us Page
  void goToAboutUs() {
    // Pop menu drawer
    Navigator.pop(context);

    // Go to About Us Page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AboutUs(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/wastewise.jpg',
                fit: BoxFit.contain,
                height: 55,
              ),
            ],
          ),
        ),
      ),
      drawer: DriverDrawer(
        onDriverProfileTap: goToDriverProfile,
        onHelpCenterTap: goToDriverHelpCenter,
        onAboutUsTap: goToAboutUs,
        // onSignOut: signOut,
      ),
      bottomNavigationBar: DriverBottomNavBar(),
    );
  }
}