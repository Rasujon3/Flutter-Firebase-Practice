import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/page1.dart';
import 'package:my_app/page2.dart';
import 'package:my_app/page3.dart';
import 'package:my_app/page4.dart';
import 'package:provider/provider.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ,
                style: TextStyle(fontSize: 50),
              ),
              RaisedButton(
                onPressed: () {
                  
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
