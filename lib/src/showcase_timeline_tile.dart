import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_timeline/timeline_tile.dart';
import 'showcase_timeline.dart';

class ShowcaseTimelineTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFffffff),
            Color(0xFFebfff0),
          ],
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              backgroundColor: Colors.green,
              title: Center(
                child: Text(
                  "Tracking Order",
                  style: GoogleFonts.varela(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              )),
          body: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: examples.length,
                    itemBuilder: (BuildContext context, int index) {
                      final example = examples[index];

                      return TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.1,
                        isFirst: index == 0,
                        isLast: index == examples.length - 1,
                        indicatorStyle: IndicatorStyle(
                          width: 40,
                          height: 40,
                          indicator: _IndicatorExample(number: '${index + 1}'),
                          drawGap: true,
                        ),
                        beforeLineStyle: LineStyle(
                          color: Colors.green.shade300,
                        ),
                        endChild: GestureDetector(
                          child: _RowExample(example: example),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<ShowcaseTimeline>(
                                builder: (_) =>
                                    ShowcaseTimeline(example: example),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _IndicatorExample extends StatelessWidget {
  const _IndicatorExample({Key? key, required this.number}) : super(key: key);

  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: number == "1" || number == "2" ? Colors.green : Colors.white,
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(
            color: Colors.green.shade500,
            width: 4,
          ),
        ),
      ),
      child: Center(
        child: number == "1" || number == "2"
            ? Icon(Icons.done, color: Colors.white)
            : Text(
                number,
                style: const TextStyle(fontSize: 30, color: Colors.green),
              ),
      ),
    );
  }
}

class _RowExample extends StatelessWidget {
  const _RowExample({Key? key, required this.example}) : super(key: key);

  final Example example;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Icon(Icons.motorcycle, color: Colors.green.shade800),
              SizedBox(width: 10),
              Text(
                example.name,
                style: GoogleFonts.varela(
                  color: Colors.green.shade500,
                  fontSize: 18,
                ),
              )
            ]),
          ),
          const Icon(
            Icons.navigate_next,
            color: Colors.green,
            size: 26,
          ),
        ],
      ),
    );
  }
}
