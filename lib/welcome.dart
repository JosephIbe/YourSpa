import 'package:buddha_spa/pages/dashboard.dart';
import 'package:buddha_spa/pages/orders.dart';
import 'package:buddha_spa/pages/profile.dart';
import 'package:buddha_spa/pages/vogue.dart';
import 'package:buddha_spa/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  List<Widget> bottomTabs = [
    Dashboard(),
    Vogue(),
    Profile(),
    Orders()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentTab = Dashboard();
  int currentIndex = 0;
  int ordersCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentTab,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Navigator.pushNamed(context, bookNowRoute),
        backgroundColor: Colors.pinkAccent,
        child: Icon(FeatherIcons.calendar),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 10.0,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60.0,
          color: Theme.of(context).primaryColorDark,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  MaterialButton(
                    onPressed: ()=> setState((){
                      currentIndex = 0;
                      currentTab = Dashboard();
                    }),
                    minWidth: 40.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.dashboard,
                          color: currentIndex == 0
                              ? Theme.of(context).accentColor : Colors.grey,
                        ),
                        Text('Home', style: TextStyle(
                          color: currentIndex == 0
                              ? Theme.of(context).accentColor : Colors.grey,
                        ),)
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: ()=> setState((){
                      currentIndex = 1;
                      currentTab = Vogue();
                    }),
                    minWidth: 40.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.trending_up,
                          color: currentIndex == 1
                              ? Theme.of(context).accentColor : Colors.grey,
                        ),
                        Text('Vogue', style: TextStyle(
                          color: currentIndex == 1
                              ? Theme.of(context).accentColor : Colors.grey,
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  MaterialButton(
                    onPressed: ()=> setState((){
                      currentIndex = 2;
                      currentTab = Profile();
                    }),
                    minWidth: 40.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: currentIndex == 2
                              ? Theme.of(context).accentColor : Colors.grey,
                        ),
                        Text('Profile', style: TextStyle(
                          color: currentIndex == 2
                              ? Theme.of(context).accentColor : Colors.grey,
                        ),)
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: ()=> setState((){
                      currentIndex = 3;
                      currentTab = Orders();
                    }),
                    minWidth: 40.0,
                    child: Stack(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.shopping_basket,
                              color: currentIndex == 3
                                  ? Theme.of(context).accentColor : Colors.grey,
                            ),
                            Text('Orders', style: TextStyle(
                              color: currentIndex == 3
                                  ? Theme.of(context).accentColor : Colors.grey,
                            ),)
                          ],
                        ),
                        Positioned(
                          top: 2.0,
                          right: 4.0,
                          child: Container(
                            width: 18.0,
                            height: 18.0,
                            decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(9.0)
                            ),
                            constraints: BoxConstraints(
                              maxHeight: 20.0,
                              maxWidth: 20.0
                            ),
                            child: Center(
                              child: Text(
                                '$ordersCount',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ),
                        )
                      ],
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
