import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  String sujon;
  Two({this.sujon});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(

        child: Text(sujon,style: TextStyle(fontSize: 25),),
      ),
    );
  }
}
