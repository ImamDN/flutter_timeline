import 'package:flutter/material.dart';
import 'package:flutter_timeline/timeline_tile.dart';

import '../showcase_timeline.dart';

const example2 = Example(
  name: 'Pesanan sedang dibuat',
  description: 'Mohon tunggu sebentar ya, pesananmu sedang dibuat',
  code:
      "https://cdn.newscorner.id/wp-content/uploads/2019/06/gofood-balige-1.jpg",
  childVertical: Example2Vertical(),
  childHorizontal: Example2Horizontal(),
);

class Example2Vertical extends StatelessWidget {
  const Example2Vertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Container(
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.center,
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

class Example2Horizontal extends StatelessWidget {
  const Example2Horizontal({Key? key}) : super(key: key);

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
