import 'package:flutter/material.dart';
import 'package:flutter_application_1/meditate_one.dart';
import 'package:flutter_application_1/meditate_two.dart';
import 'package:flutter_application_1/meditate.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Meditate(),
    );
  }
}