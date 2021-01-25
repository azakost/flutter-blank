import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(CoreWidget());

class CoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]); // Portrait mode only
    SystemChrome.setEnabledSystemUIOverlays([]); // Hide statusbar
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Text'),
        ),
      ),
    );
  }
}
