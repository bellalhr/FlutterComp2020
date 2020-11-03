import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Three'),
      ),
      body: Center(
        child: Text('Three',style: TextStyle(color: Colors.blue,fontSize: 25),),
      ),
    );
  }
}
