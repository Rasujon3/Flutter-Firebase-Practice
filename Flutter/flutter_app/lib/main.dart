import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(flutter_app());
}

int clickNumber = 0;

class flutter_app extends StatefulWidget {
  @override
  _flutter_appState createState() => _flutter_appState();
}

class _flutter_appState extends State<flutter_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFDFDFD),
        body: Column(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    clickNumber = clickNumber + 1;
                    print('Press container');
                    print('Click Number is = $clickNumber');
                  });
                },
                child: Container(
                  child: Text(
                    clickNumber.toString(),
                    style: TextStyle(fontSize: 35.0, color: Colors.white),
                  ),
                  color: Colors.green,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
