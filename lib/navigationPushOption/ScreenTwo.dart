import 'package:flutter/material.dart';
import 'package:my_apps/navigationPushOption/ScreenThree.dart';

class ScreenTwo extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
           /* Navigator.of(context).pushReplacement(PageRouteBuilder(
                pageBuilder: (_, __, ___) =>
                new ScreenThree()));*/

            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                ScreenThree()), (Route<dynamic> route) => false);
          },
            child: Text('Two',style: TextStyle(color: Colors.yellow,fontSize: 25),)),
      ),
    );
  }
}
