import 'package:flutter/material.dart';
import 'package:flutter_timeline/timeline_tile.dart';

import '../showcase_timeline.dart';

const example3 = Example(
  name: 'Driver menuju lokasi',
  description:
      'Dikit lagi pesananmu sampai.. Driver kamu sedang menuju lokasi. Mungkin ini memakan waktu lama, karena kondisi dijalan bisa macet.',
  code:
      "https://i2.wp.com/pilar17.com/wp-content/uploads/2020/05/gojek-helmet-motorbike-motorcycle-3072706.jpg?fit=1200%2C900&ssl=1",
  childVertical: Example3Vertical(),
  childHorizontal: Example3Horizontal(),
);

class Example3Vertical extends StatelessWidget {
  const Example3Vertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Container(
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.3,
              startChild: Container(
                constraints: const BoxConstraints(
                  minHeight: 120,
                ),
                color: Colors.lightGreenAccent,
              ),
              endChild: Container(
                color: Colors.amberAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Example3Horizontal extends StatelessWidget {
  const Example3Horizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Row(
            children: [
              Container(
                constraints: const BoxConstraints(maxHeight: 100),
                color: Colors.white,
                child: TimelineTile(
                  axis: TimelineAxis.horizontal,
                  alignment: TimelineAlign.manual,
                  lineXY: 0.3,
                  startChild: Container(
                    constraints: const BoxConstraints(
                      minWidth: 120,
                    ),
                    color: Colors.lightGreenAccent,
                  ),
                  endChild: Container(
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
