import 'package:flutter/material.dart';
import 'package:inspiration/InspirationApp.dart';

void main(List<String> args) {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InspirationApp(),
    );
  }
}
