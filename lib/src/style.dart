import 'package:flutter/material.dart';
import 'package:flutter_timeline/src/tile.dart';

class IndicatorStyle {
  const IndicatorStyle({
    this.width = 20,
    this.height = 20,
    this.indicator,
    this.padding = const EdgeInsets.all(0),
    this.color = Colors.grey,
    this.iconStyle,
    this.indicatorXY = 0.5,
    this.drawGap = false,
  })  : assert(width >= 0, 'The width must be provided and bigger than 0.0'),
        assert(height >= 0, 'The height must be provided and bigger than 0.0');

  final double width;
  final double height;
  final Widget? indicator;
  final EdgeInsets padding;
  final Color color;
  final IconStyle? iconStyle;
  final double indicatorXY;
  final bool drawGap;
  double get totalHeight => height + padding.top + padding.bottom;
  double get totalWidth => width + padding.left + padding.right;
}

class IconStyle {
  IconStyle({
    required this.iconData,
    this.color = Colors.black,
    this.fontSize,
  });

  final IconData iconData;
  final Color color;
  final double? fontSize;
}

class LineStyle {
  const LineStyle({
    this.color = Colors.grey,
    this.thickness = 4,
  });

  final Color color;
  final double thickness;
}
