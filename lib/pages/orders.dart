import 'package:buddha_spa/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

  bool _isEmptyCart = true;

  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: Colors.brown[500],
                      width: 1.0,
                    )
                )
            ),
            child: AppBar(
              automaticallyImplyLeading: false,
              iconTheme: IconThemeData(
                  color: Colors.white
              ),
              title: Text(
                'CART',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 26.0),
              ),
              centerTitle: true,
            ),
          ),
        ),
        body: Container(
          width: w,
          height: h,
          color: Theme.of(context).primaryColor,
          child: _isEmptyCart
              ? emptyCartView(w)
              : Container(),
        ),
      ),
    );
  }

  Widget emptyCartView(double w) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'YOUR BAG IS EMPTY',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 26.0,
//              fontWeight: FontWeight.w200
            ),
          ),

          GestureDetector(
            onTap: ()=> Navigator.pushNamed(context, bookNowRoute),
            child: Container(
              width: w,
              margin: EdgeInsets.symmetric(
                  vertical: 34.0, horizontal: 26.0),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).accentColor,
                      style: BorderStyle.solid,
                      width: 0.8),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(4.0)
              ),
              child: ListTile(
                title: Center(
                  child: Text('ADD SERVICE', style: TextStyle(color: Colors.white),),
                ),
                trailing: Icon(FeatherIcons.arrowRight, color: Colors.pinkAccent,),
              ),
            ),
          ),
        ],
      );
  }
}
