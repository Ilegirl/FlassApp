import 'package:flutter/material.dart';

import '../component/single/button/FlashButton.dart';
import '../component/single/margin/Crossmargin.dart';
import '../component/single/slider/TempoSlider.dart';

class FlashUI extends StatefulWidget {
  const FlashUI({Key? key}) : super(key: key);

  @override
  _FlashUIState createState() => _FlashUIState();
}

class _FlashUIState extends State<FlashUI> {
  double _currentSliderValue = 20;
  List GenreList = ["Ballad", "Dance", "EDM"];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            FlashButton(
              label: GenreList[0],
              onPressed: () {},
            ),
            Crossmargin(),
            FlashButton(
              label: GenreList[1],
              onPressed: () {},
            ),
            Crossmargin(),
            FlashButton(
              label: GenreList[2],
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