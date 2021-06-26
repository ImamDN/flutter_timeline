import 'package:flutter/material.dart';
import 'package:flutter_timeline/timeline_tile.dart';

import '../showcase_timeline.dart';

const example4 = Example(
  name: 'Paket telah diterima',
  description: 'Paketmu sudah sampai, selamat menikmati. ',
  code:
      "https://pict-a.sindonews.net/dyn/620/pena/news/2020/10/06/34/187846/simak-baikbaik-begini-cara-gofood-jaga-makanan-agar-terhindar-dari-covid19-bhm.jpeg",
  childVertical: Example4Vertical(),
  childHorizontal: Example4Horizontal(),
);

class Example4Vertical extends StatelessWidget {
  const Example4Vertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Container(
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.end,
              isFirst: true,
              startChild: Container(
                constraints: const BoxConstraints(
                  minHeight: 120,
                ),
                color: Colors.amberAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Example4Horizontal extends StatelessWidget {
  const Example4Horizontal({Key? key}) : super(key: key);

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
                  alignment: TimelineAlign.end,
                  isFirst: true,
                  startChild: Container(
                    constraints: const BoxConstraints(
                      minWidth: 120,
                    ),
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
