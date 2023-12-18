import 'package:flutter/material.dart';

class UserHelpCenter extends StatefulWidget {
  const UserHelpCenter({super.key});

  @override
  State<UserHelpCenter> createState() => _UserHelpCenterState();
}

class _UserHelpCenterState extends State<UserHelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FEEDBACK"),
      ),
    );
  }
}
