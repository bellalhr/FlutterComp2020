import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Product page',style: TextStyle(fontSize: 20,color: Colors.red),),
      ),
    );
  }
}
