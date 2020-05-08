import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(title: 'Solid Software Test Task'));
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Color randomBackgroundColor = Colors.white;
  static Color randomTextColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          randomTextColor = generateColor();
          randomBackgroundColor = generateColor();
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Text(
            "Hey there",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: randomTextColor),
          ),
        ),
        backgroundColor: randomBackgroundColor,
      ),
    );
  }
}

generateColor() {
  return Color(Random().nextInt(0xffffffff));
}
