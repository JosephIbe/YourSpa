import 'package:buddha_spa/utils/constants.dart';
import 'package:buddha_spa/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _formKey = GlobalKey<FormState>();
  final _mobileNumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: w,
          height: h,
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          color: Theme.of(context).primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: 70.0,
                  width: w,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.brown[500],
                    width: 1.0,
                  ))),
                  child: Center(
                    child: Text(
                      'BOOK IT!!',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 26.0),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 10.0),
                child: Text(
                  'LOGIN/REGISTER',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 24.0),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Icon(
                              Icons.phone,
                              color: Theme.of(context).accentColor,
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              'MOBILE NUMBER',
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 16.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(),
                            flex: 1,
                          ),
                          Expanded(
                            flex: 3,
                            child: TextFormField(
                                controller: _mobileNumController,
                                maxLines: 1,
                                keyboardType: TextInputType.phone,
                                decoration: inputDecoration),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=> Navigator.pushNamed(context, otpRoute),
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
                            child: Text('NEXT', style: TextStyle(color: Colors.white),),
                          ),
                          trailing: Icon(FeatherIcons.arrowRight, color: Colors.pinkAccent,),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
