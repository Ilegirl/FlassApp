import 'package:flash/ui/FlashUI.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlashApp());
}

class FlashApp extends StatefulWidget {
  const FlashApp({super.key});
  @override
  State<FlashApp> createState() => _FlashState();
}

// 주석을 달았습니다.
class _FlashState extends State<FlashApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home : Scaffold(
            body: FlashUI(),
            bottomNavigationBar: BottomAppBar(
                height : 60,
                child : Center(
                    child : Text('Advertisement'))
            )
        )
    );
  }
}
