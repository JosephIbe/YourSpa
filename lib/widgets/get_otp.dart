import 'package:buddha_spa/utils/constants.dart';
import 'package:buddha_spa/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class GetOTP extends StatefulWidget {
  @override
  _GetOTPState createState() => _GetOTPState();
}

class _GetOTPState extends State<GetOTP> {

  final _formKey = GlobalKey<FormState>();
  final _mobileNumController = TextEditingController();

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
              leading: IconButton(
                icon: Icon(FeatherIcons.chevronLeft),
                onPressed: ()=> Navigator.pop(context),
                padding: EdgeInsets.all(4.0),
              ),
              title: Text(
                'BOOK IT!!',
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
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          color: Theme.of(context).primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
//              Container(
//                  height: 70.0,
//                  width: w,
//                  decoration: BoxDecoration(
//                      border: Border(
//                          bottom: BorderSide(
//                            color: Colors.brown[500],
//                            width: 1.0,
//                          )
//                      )
//                  ),
//                  child: Center(
//                    child: Text(
//                      'BOOK IT!!',
//                      style: TextStyle(
//                          color: Colors.white,
//                          fontWeight: FontWeight.w300,
//                          fontSize: 26.0),
//                    ),
//                  )),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 10.0),
                child: Text(
                  'OTP',
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
                              maxLength: 6,
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.done,
                              decoration: inputDecoration,
                              onFieldSubmitted: (term){
                                FocusScope.of(context).unfocus();
                                Navigator.of(context).pushNamed(signUpRoute);
                              },
                            ),
                          )
                        ],
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
