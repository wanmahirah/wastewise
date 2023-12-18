import 'package:flutter/material.dart';
import 'package:wastewise/user/component/drawer.dart';
import 'package:wastewise/user/component/bottomnavigationbar.dart';
import 'package:wastewise/user/pages/profile.dart';
import 'package:wastewise/user/pages/feedback.dart';
import 'package:wastewise/user/pages/statistics.dart';
import 'package:wastewise/user/pages/helpcenter.dart';
import 'package:wastewise/outro/about.dart';

// user bnb: home, bin locations, schedule pickup, settings
// user drawer: user profile, feedback & recommendations, statistics, help center & about us
// driver bnb: dashboard, route overview, collection status, settings
// driver drawer: driver profile, help center & about us

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {

  // Navigate to User Profile Page
  void goToUserProfile() {
    // Pop menu drawer
    Navigator.pop(context);

    // Go to User Profile Page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const UserProfile(),
      ),
    );
  }

  // Navigate to Feedback & Recommendations Page
  void goToUserFeedback() {
    // Pop menu drawer
    Navigator.pop(context);

    // Go to User Feedback Page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const UserFeedback(),
      ),
    );
  }

  // Navigate to Statistics Page
  void goToStatistics() {
    // Pop menu drawer
    Navigator.pop(context);

    // Go to Statistics Page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Statistics(),
      ),
    );
  }

  // Navigate to User Help Center Page
  void goToUserHelpCenter() {
    // Pop menu drawer
    Navigator.pop(context);

    // Go to User Help Center Page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const UserHelpCenter(),
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
      // user drawer: user profile, feedback & recommendations, statistics, help center & about us
      drawer: UserDrawer(
        onUserProfileTap: goToUserProfile,
        onUserFeedbackTap: goToUserFeedback,
        onStatisticsTap: goToStatistics,
        onUserHelpCenterTap: goToUserHelpCenter,
        onAboutUsTap: goToAboutUs,
        // onSignOut: signOut,
      ),
      bottomNavigationBar: UserBottomNavBar(),
    );
  }
}
