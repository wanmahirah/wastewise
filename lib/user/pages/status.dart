import 'package:flutter/material.dart';

class BinStatus extends StatefulWidget {
  const BinStatus({super.key});

  @override
  State<BinStatus> createState() => _BinStatusState();
}

class _BinStatusState extends State<BinStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BIN STATUS"),
      ),
    );
  }
}