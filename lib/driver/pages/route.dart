import 'package:flutter/material.dart';

class RouteOverview extends StatefulWidget {
  const RouteOverview({super.key});

  @override
  State<RouteOverview> createState() => _RouteOverviewState();
}

class _RouteOverviewState extends State<RouteOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ROUTE OVERVIEW"),
      ),
    );
  }
}