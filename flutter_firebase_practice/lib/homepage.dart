import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "This is home page.",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
