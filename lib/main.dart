import 'package:flutter/material.dart';

void main() {
  runApp(const CleanApp());
}

class CleanApp extends StatelessWidget {
  const CleanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Text('Home'),);
  }
}
