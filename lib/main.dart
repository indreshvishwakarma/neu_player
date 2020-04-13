import 'package:flutter/material.dart';
import 'package:neo_player/widgets/album.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.black12,
            child: Album(),
          ),
        ),
      ),
    );
  }
}
