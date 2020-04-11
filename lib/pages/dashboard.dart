import 'package:buddha_spa/widgets/collection.dart';
import 'package:buddha_spa/widgets/monthly_picks.dart';
import 'package:buddha_spa/widgets/our_services.dart';
import 'package:buddha_spa/widgets/share_selfie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin{

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;

    debugPrint('screen Height:\t$sh');
    debugPrint('screen Width:\t$sw');

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(FeatherIcons.bell),
          onPressed: () {},
        ),
        title: ListTile(
          title: Text('Your Spa', style: TextStyle(color: Colors.white),),
          subtitle: Text('Your Location', style: TextStyle(color: Colors.white),),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                icon: Icon(FeatherIcons.phoneCall), onPressed: () {}),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: sh * 0.26,
            width: sw,
            color: Colors.amberAccent,
          ),
        Container(
          width: sw,
          color: Theme.of(context).primaryColor,
          height: 50,
          child: TabBar(
            tabs: [
              Tab(
                text: 'OUR SERVICES',
              ),
              Tab(
                text: 'OUR COLLECTIONS',
              ),
              Tab(
                text: 'MONTHLY LOOK PICKS',
              ),
              Tab(
                text: 'SHARE YOUR SELFIE',
              )
            ],
            unselectedLabelColor: Color(0xffacb3bf),
            indicatorColor: Theme.of(context).accentColor,
            labelColor: Theme.of(context).accentColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3.0,
            isScrollable: true,
            controller: _controller,
          ),
        ),
        Expanded(
          child: TabBarView(
              controller: _controller,
              children: <Widget>[
                OurServices(),
                Collection(),
                MonthlyPicks(),
                ShareSelfie()
              ]),
        )
        ]
    ),
    );
  }
}
