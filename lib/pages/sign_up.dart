import 'package:buddha_spa/utils/constants.dart';
import 'package:buddha_spa/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();
  final _firstController = TextEditingController();
  final _lastController = TextEditingController();
  final _emailController = TextEditingController();
  final _userNameController = TextEditingController();
  final _pwdController = TextEditingController();
  final _confirmPwdController = TextEditingController();
  final _refCodeController = TextEditingController();

  final FocusNode _firstNode = FocusNode();
  final FocusNode _lastNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _userNameNode = FocusNode();
  final FocusNode _pwdNode = FocusNode();
  final FocusNode _confirmPwdNode = FocusNode();
  final FocusNode _refCodeNode = FocusNode();

  bool isMarketingSms = false;
  bool isMarketingEmail = false;
  bool tnc = false;

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
          color: Theme.of(context).primaryColor,
          child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 10.0),
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 24.0),
                  ),
                ),

                /**
                 *  First Name Field
                 * **/

                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Icon(
                          Icons.format_align_left,
                          color: Theme.of(context).accentColor,
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'FIRST NAME',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 16.0),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: _firstController,
                          maxLines: 1,
                          maxLength: 15,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: inputDecoration,
                          onFieldSubmitted: (term){
                            FocusScope.of(context).requestFocus(_lastNode);
                          },
                        ),
                      )
                    ],
                  ),
                ),

                /**
                 *  Last Name Field
                 * **/

                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Icon(
                          Icons.format_align_left,
                          color: Theme.of(context).accentColor,
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'LAST NAME',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 16.0),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: _lastController,
                          maxLines: 1,
                          maxLength: 15,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: inputDecoration,
                          onFieldSubmitted: (term){
                            FocusScope.of(context).requestFocus(_userNameNode);
                          },
                        ),
                      )
                    ],
                  ),
                ),

                /**
                 *  Username Field
                 * **/

                Padding(
                  padding: const EdgeInsets.all(6.0),
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
                          'USERNAME/PHONE',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 16.0),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: _userNameController,
                          maxLines: 1,
                          maxLength: 6,
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          decoration: inputDecoration,
                          onFieldSubmitted: (term){
                            FocusScope.of(context).requestFocus(_emailNode);
                          },
                        ),
                      )
                    ],
                  ),
                ),

                /**
                 *  Email Field
                 * **/

                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Icon(
                          Icons.email,
                          color: Theme.of(context).accentColor,
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'E-MAIL',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 16.0),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: _emailController,
                          maxLines: 1,
                          maxLength: 6,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: inputDecoration,
                          onFieldSubmitted: (term){
                            FocusScope.of(context).requestFocus(_pwdNode);
                          },
                        ),
                      )
                    ],
                  ),
                ),

                /**
                 *  Pwd Field
                 * **/

                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Icon(
                          Icons.https,
                          color: Theme.of(context).accentColor,
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'PASSWORD',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 16.0),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: _pwdController,
                          maxLines: 1,
                          maxLength: 6,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: inputDecoration,
                          onFieldSubmitted: (term){
                            FocusScope.of(context).requestFocus(_confirmPwdNode);
                          },
                        ),
                      )
                    ],
                  ),
                ),

                /**
                 *  Confirm Pwd Field
                 * **/

                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Icon(
                          Icons.https,
                          color: Theme.of(context).accentColor,
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'CONFIRM PASSWORD',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 16.0),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: _confirmPwdController,
                          maxLines: 1,
                          maxLength: 6,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: inputDecoration,
                          onFieldSubmitted: (term){
                            FocusScope.of(context).requestFocus(_refCodeNode);
                          },
                        ),
                      )
                    ],
                  ),
                ),

                /**
                 *  RefCode Field
                 * **/

                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.email,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'ENTER REFERRAL CODE',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 16.0),
                        ),
                      ),
                      Container(
                        width: 70,
//                        margin: EdgeInsets.only(top: 10.0),
                        padding: EdgeInsets.symmetric(vertical: 6.0),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Theme.of(context).accentColor, width: 1.0)
                        ),
                        child: Text(
                          'APPLY',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: _refCodeController,
                          maxLines: 1,
                          maxLength: 6,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: inputDecoration,
                        ),
                      )
                    ],
                  ),
                ),

                //todo add promo options

                GestureDetector(
                  onTap: ()=> Navigator.pushNamed(context, myProfileRoute),
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
                        child: Text('SIGN UP', style: TextStyle(color: Colors.white),),
                      ),
                      trailing: Icon(FeatherIcons.arrowRight, color: Colors.pinkAccent,),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
