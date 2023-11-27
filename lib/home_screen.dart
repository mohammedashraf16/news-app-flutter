import 'package:flutter/material.dart';
import 'package:untitled/base_screen.dart';

class HomeScreen extends BaseScreen implements SliderComponentShape {
  HomeScreen(super.screenName);
  @override
  void showNetworkErrorMessage() {}
  @override
  void getData() {}

  void execute() {}

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    // TODO: implement getPreferredSize
    throw UnimplementedError();
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    // TODO: implement paint
  }
}
