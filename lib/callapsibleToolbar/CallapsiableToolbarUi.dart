import 'package:flutter/material.dart';

class CallapsiableToolbarUi extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CallapsiableToolbarUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Fair Mart",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: ListView.builder(
              shrinkWrap: true,
              primary: true,
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child:
                      Text("Sample Text Sample Text Sample Text Sample Text "),
                );
              })),
    );
  }
}
