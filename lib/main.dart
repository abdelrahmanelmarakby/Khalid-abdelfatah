import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/screens/screenone.dart';

void main() => runApp(MyApp());
var maincolor = Color(0xff73d4dd);

var accentcolor = Color(0xff13165a);

class MyApp extends StatelessWidget {
  ThemeData theme = ThemeData(
      backgroundColor: Color(0xff040405),
      primaryColor: Color(0xff73d4dd),
      accentColor: Color(0xff13165a),
      textTheme: TextTheme(
          bodyText2: GoogleFonts.cairo(fontSize: 15, shadows: [
            Shadow(
              offset: Offset(1.0, 1.0),
              blurRadius: 12.0,
              color: Colors.indigo,
            ),
            Shadow(
              offset: Offset(3.0, 3.0),
              blurRadius: 12.0,
              color: Colors.black12,
            ),
          ]),
          headline2: TextStyle(fontSize: 15, shadows: [
            Shadow(
              offset: Offset(1.0, 1.0),
              blurRadius: 6.0,
              color: Color.fromARGB(100, 0, 0, 0),
            ),
            Shadow(
              offset: Offset(3.0, 3.0),
              blurRadius: 8.0,
              color: Color.fromARGB(175, 100, 100, 100),
            ),
          ]),
          headline5: TextStyle(fontSize: 15, shadows: [
            Shadow(
              offset: Offset(1.0, 1.0),
              blurRadius: 6.0,
              color: Color.fromARGB(100, 0, 0, 0),
            ),
            Shadow(
              offset: Offset(3.0, 3.0),
              blurRadius: 8.0,
              color: Color.fromARGB(175, 100, 100, 100),
            ),
          ]),
          subtitle2: TextStyle(fontSize: 15, shadows: [
            Shadow(
              offset: Offset(1.0, 1.0),
              blurRadius: 6.0,
              color: Color.fromARGB(100, 0, 0, 0),
            ),
            Shadow(
              offset: Offset(3.0, 3.0),
              blurRadius: 8.0,
              color: Color.fromARGB(175, 100, 100, 100),
            ),
          ])));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ScreenOne(),
      theme: theme,
    );
  }
}
