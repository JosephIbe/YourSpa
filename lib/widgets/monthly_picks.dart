import 'package:flutter/material.dart';

class MonthlyPicks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            child: Image.network(
              'https://i.pinimg.com/236x/0a/77/21/0a77216bba5e73c53de23b2154385954.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
