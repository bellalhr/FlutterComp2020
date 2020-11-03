import 'package:flutter/material.dart';

class PaginationDemo extends StatefulWidget {
  @override
  _PaginationDemoState createState() => _PaginationDemoState();
}

class _PaginationDemoState extends State<PaginationDemo> {

  List<int> list=List<int>();
  ScrollController _scrollController=ScrollController();

  void addItem(){
    for(int i=0;i<7;i++)
      {
        setState(() {
          list.add(i);
        });
      }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addItem();
    _scrollController.addListener(() {
        if(_scrollController.position.pixels==_scrollController.position.maxScrollExtent)
          {
            addItem();
          }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagination Demo'),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              height: 600,
              width: double.infinity,
              color: Colors.red,
            ),
            ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 100,
                      width: double.infinity,

                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Colors.black26.withOpacity(.3),
                            spreadRadius: 0,
                            blurRadius: 1,
                            offset: Offset(0, 3),
                          )]
                      ),
                      child: Center(
                        child: Text('Item No $index',style: TextStyle(color: Colors.brown),),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
