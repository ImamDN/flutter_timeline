import 'package:flutter/material.dart';
import 'package:flutter_timeline/src/tile.dart';

class TimelineDivider extends StatelessWidget {
  const TimelineDivider({
    Key? key,
    this.axis = TimelineAxis.horizontal,
    this.thickness = 2,
    this.begin = 0.0,
    this.end = 1.0,
    this.color = Colors.grey,
  })  : assert(thickness >= 0.0, 'The thickness must be a positive value'),
        assert(begin >= 0.0 && begin <= 1.0,
            'The begin value must be between 0.0 and 1.0'),
        assert(end >= 0.0 && end <= 1.0,
            'The end value must be between 0.0 and 1.0'),
        assert(end > begin, 'The end value must be bigger than the begin'),
        super(key: key);

  final TimelineAxis axis;
  final double thickness;
  final double begin;
  final double end;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double halfThickness = thickness / 2;

        EdgeInsetsDirectional margin;
        if (axis == TimelineAxis.horizontal) {
          final double width = constraints.maxWidth;
          final double beginX = width * begin;
          final double endX = width * end;

          margin = EdgeInsetsDirectional.only(
            start: beginX - halfThickness,
            end: width - endX - halfThickness,
          );
        } else {
          final double height = constraints.maxHeight;
          final double beginY = height * begin;
          final double endY = height * end;

          margin = EdgeInsetsDirectional.only(
            top: beginY - halfThickness,
            bottom: height - endY - halfThickness,
          );
        }

        return Container(
          height: thickness,
          margin: margin,
          decoration: BoxDecoration(
            border: Border(
              left: axis == TimelineAxis.vertical
                  ? BorderSide(
                      color: color,
                      width: thickness,
                    )
                  : BorderSide.none,
              bottom: axis == TimelineAxis.horizontal
                  ? BorderSide(
                      color: color,
                      width: thickness,
                    )
                  : BorderSide.none,
            ),
          ),
        );
      },
    );
  }
}
