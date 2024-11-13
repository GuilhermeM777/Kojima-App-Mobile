import 'package:flutter/material.dart';
import 'TelaMenu.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Kojima',
      home: TelaMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}
