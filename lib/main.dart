import 'package:flutter/material.dart';

void main() {
  runApp(const FlashApp());
}

class FlashApp extends StatelessWidget {
  const FlashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("Flash App")
    );
  }
}
