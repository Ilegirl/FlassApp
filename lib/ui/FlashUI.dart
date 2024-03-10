import 'package:flutter/material.dart';

import '../component/single/button/FlashButton.dart';
import '../component/single/slider/TempoSlider.dart';

class FlashUI extends StatefulWidget {
  const FlashUI({Key? key}) : super(key: key);

  @override
  _FlashUIState createState() => _FlashUIState();
}

class _FlashUIState extends State<FlashUI> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlashButton(
              label: 'Ballad',
              onPressed: () {},
            ),
            FlashButton(
              label: 'Dance',
              onPressed: () {},
            ),
            FlashButton(
              label: 'EDM',
              onPressed: () {},
            )
          ],
        ),
        TempoSlider(
          value: _currentSliderValue,
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ],
    );
  }
}