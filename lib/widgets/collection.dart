import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.network(
              'https://image.shutterstock.com/image-vector/spa-resort-beauty-business-poster-600w-387064471.jpg',
              height: 110,
              fit: BoxFit.cover,
  //            width: MediaQuery.of(context).size.width / 2,
            ),
          ),
          Expanded(
              child: Container(),
          )
        ]
      ),
    );
  }
}
