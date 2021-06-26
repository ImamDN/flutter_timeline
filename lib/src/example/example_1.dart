import 'package:flutter/material.dart';
import 'package:flutter_timeline/timeline_tile.dart';

import '../showcase_timeline.dart';

const example1 = Example(
  name: 'Driver menuju restoran',
  description:
      'Sabar dulu ya.. Driver kamu sedang menuju restoran. Mungkin ini memakan waktu lama, karena kondisi dijalan bisa macet.',
  code:
      "https://cdn.idntimes.com/content-images/post/20150914/AbangGojek_600x400.jpg",
  childVertical: Example1Vertical(),
  childHorizontal: Example1Horizontal(),
);

class Example1Vertical extends StatelessWidget {
  const Example1Vertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Container(
            color: Colors.white,
            child: TimelineTile(),
          ),
        ],
      ),
    );
  }
}

class Example1Horizontal extends StatelessWidget {
  const Example1Horizontal({Key? key}) : super(key: key);

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
                  alignment: TimelineAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
