import 'package:buddha_spa/utils/constants.dart';
import 'package:buddha_spa/widgets/hair.dart';
import 'package:buddha_spa/widgets/makeup.dart';
import 'package:buddha_spa/widgets/manipedi.dart';
import 'package:buddha_spa/widgets/massage.dart';
import 'package:buddha_spa/widgets/skin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class BookNow extends StatefulWidget {
  @override
  _BookNowState createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            leading: IconButton(
              icon: Icon(FeatherIcons.chevronLeft),
              onPressed: ()=> Navigator.pop(context),
              padding: EdgeInsets.all(4.0),
            ),
            title: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: Theme.of(context).accentColor,
              ),
              padding: EdgeInsets.all(4.0),
              child: Text(
                'SERVICES',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18.0
                ),
              ),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(FeatherIcons.search),
                onPressed: ()=> Navigator.pushNamed(context, searchServicesRoute),
                padding: EdgeInsets.all(4.0),
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: 'SKIN',),
                Tab(text: 'HAIR',),
                Tab(text: 'MAKE UP',),
                Tab(text: 'MASSAGE',),
                Tab(text: 'HANDS & FEET',),
              ],
              unselectedLabelColor: Color(0xffacb3bf),
              indicatorColor: Theme.of(context).accentColor,
              labelColor: Theme.of(context).accentColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3.0,
              isScrollable: true,
            ),
          ),
          body: Container(
            width: w,
            height: h,
            color: Theme.of(context).primaryColor,
            child: TabBarView(
              children: [
                SkinCare(),
                Hair(),
                MakeUp(),
                Massage(),
                ManiPedi(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
