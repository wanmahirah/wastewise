import 'package:flutter/material.dart';

class CollectionStatus extends StatefulWidget {
  const CollectionStatus({super.key});

  @override
  State<CollectionStatus> createState() => _CollectionStatusState();
}

class _CollectionStatusState extends State<CollectionStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SETTINGS"),
      ),
    );
  }
}
