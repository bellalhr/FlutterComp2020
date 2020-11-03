import 'package:flutter/material.dart';
import 'package:my_apps/navigationPushOption/ScreenTwo.dart';

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (_, __, ___) =>
                new ScreenTwo()));
          },
            child: Text('One',style: TextStyle(color: Colors.red,fontSize: 25),)),
      ),
    );
  }
}
