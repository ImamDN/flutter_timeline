import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/showcase_timeline_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Timeline - Tracking Order',
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.nanumPenScriptTextTheme(
          Theme.of(context).textTheme,
        ).apply(bodyColor: Colors.white),
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ShowcaseTimelineTile(),
    );
  }
}
