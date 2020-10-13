import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  String sujon;
  Details({this.sujon});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(

        child: Text(widget.sujon,style: TextStyle(fontSize: 25),),
      ),
    );
  }
}

