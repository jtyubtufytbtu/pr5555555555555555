import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String platformText;

    if (kIsWeb) {
      platformText = 'браузер';
    } else if (Theme.of(context).platform == TargetPlatform.android) {
      platformText = ' Android';
    } else if (Theme.of(context).platform == TargetPlatform.iOS) {
      platformText = ' iOS';
    } else if (Theme.of(context).platform == TargetPlatform.windows) {
      platformText = ' Windows';
    } else if (Theme.of(context).platform == TargetPlatform.linux) {
      platformText = ' Linux';
    } else if (Theme.of(context).platform == TargetPlatform.macOS) {
      platformText = 'macOS';
    } else {
      platformText = 'Неизвестная платформа';
    }

    return MaterialApp(
      title: 'практика5',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Platform'),
        ),
        body: Center(
          child: Text(platformText,
        style: TextStyle(
          fontSize: 24.0, )),
        ),
      ),
    );
  }
}
