import 'package:flutter/material.dart';
import 'package:basic_state_management/pages/shibnobi.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Shibnobi(),
    );
  }
}
