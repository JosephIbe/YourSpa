import 'package:flutter/material.dart';

class Vogue extends StatefulWidget {
  @override
  _VogueState createState() => _VogueState();
}

class _VogueState extends State<Vogue> {
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
                'VOGUE',
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
          color: Theme.of(context).primaryColor,
          width: w,
          height: h,
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          child: ListView(
            children: <Widget>[
              buildLatestVogue(context),
              buildMostViewedVogue(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMostViewedVogue(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'MOST VIEWED',
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        /**
         *  End ListView Header
         * **/
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
          child: ListTile(
            leading: Container(
              child: Image.network(
                'https://image.shutterstock.com/image-vector/spa-resort-beauty-business-poster-600w-387064471.jpg',
                fit: BoxFit.cover,
                height: 50.0,
                width: 80.0,
              ),
            ),
            title: Text(
              '5 YUMMY SMOOTHIES TO ADD TO YOUR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
            subtitle: Text(
              'I HAVE BEEN A FUNCTIONAL LAZY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300
              ),
              maxLines: 1,
            ),
          ),
        ),
        Divider(color: Colors.grey[200],),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
          child: ListTile(
            leading: Container(
              child: Image.network(
                'https://image.shutterstock.com/image-vector/spa-resort-beauty-business-poster-600w-387064471.jpg',
                fit: BoxFit.cover,
                height: 50.0,
                width: 80.0,
              ),
            ),
            title: Text(
              '5 YUMMY SMOOTHIES TO ADD TO YOUR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
            subtitle: Text(
              'I HAVE BEEN A FUNCTIONAL LAZY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300
              ),
              maxLines: 1,
            ),
          ),
        ),
        Divider(color: Colors.grey[200],),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
          child: ListTile(
            leading: Container(
              child: Image.network(
                'https://image.shutterstock.com/image-vector/spa-resort-beauty-business-poster-600w-387064471.jpg',
                fit: BoxFit.cover,
                height: 50.0,
                width: 80.0,
              ),
            ),
            title: Text(
              '5 YUMMY SMOOTHIES TO ADD TO YOUR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
            subtitle: Text(
              'I HAVE BEEN A FUNCTIONAL LAZY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300
              ),
              maxLines: 1,
            ),
          ),
        ),
        Divider(color: Colors.grey[200],),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
          child: ListTile(
            leading: Container(
              child: Image.network(
                'https://image.shutterstock.com/image-vector/spa-resort-beauty-business-poster-600w-387064471.jpg',
                fit: BoxFit.cover,
                height: 50.0,
                width: 80.0,
              ),
            ),
            title: Text(
              '5 YUMMY SMOOTHIES TO ADD TO YOUR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
            subtitle: Text(
              'I HAVE BEEN A FUNCTIONAL LAZY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300
              ),
              maxLines: 1,
            ),
          ),
        ),
        Divider(color: Colors.grey[200],),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
          child: ListTile(
            leading: Container(
              child: Image.network(
                'https://image.shutterstock.com/image-vector/spa-resort-beauty-business-poster-600w-387064471.jpg',
                fit: BoxFit.cover,
                height: 50.0,
                width: 80.0,
              ),
            ),
            title: Text(
              '5 YUMMY SMOOTHIES TO ADD TO YOUR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
            subtitle: Text(
              'I HAVE BEEN A FUNCTIONAL LAZY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300
              ),
              maxLines: 1,
            ),
          ),
        ),
        Divider(color: Colors.grey[200],),
      ],
    );
  }

  Widget buildLatestVogue(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'LATEST',
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        /**
         *  End ListView Header
         * **/
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
          child: ListTile(
            leading: Container(
              child: Image.network(
                'https://image.shutterstock.com/image-vector/spa-resort-beauty-business-poster-600w-387064471.jpg',
                fit: BoxFit.cover,
                height: 50.0,
                width: 80.0,
              ),
            ),
            title: Text(
              '5 YUMMY SMOOTHIES TO ADD TO YOUR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
            subtitle: Text(
              'I HAVE BEEN A FUNCTIONAL LAZY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300
              ),
              maxLines: 1,
            ),
          ),
        ),
        Divider(color: Colors.grey[200],),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
          child: ListTile(
            leading: Container(
              child: Image.network(
                'https://image.shutterstock.com/image-vector/spa-resort-beauty-business-poster-600w-387064471.jpg',
                fit: BoxFit.cover,
                height: 50.0,
                width: 80.0,
              ),
            ),
            title: Text(
              '5 YUMMY SMOOTHIES TO ADD TO YOUR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
            subtitle: Text(
              'I HAVE BEEN A FUNCTIONAL LAZY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300
              ),
              maxLines: 1,
            ),
          ),
        ),
        Divider(color: Colors.grey[200],),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
          child: ListTile(
            leading: Container(
              child: Image.network(
                'https://image.shutterstock.com/image-vector/spa-resort-beauty-business-poster-600w-387064471.jpg',
                fit: BoxFit.cover,
                height: 50.0,
                width: 80.0,
              ),
            ),
            title: Text(
              '5 YUMMY SMOOTHIES TO ADD TO YOUR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
            subtitle: Text(
              'I HAVE BEEN A FUNCTIONAL LAZY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300
              ),
              maxLines: 1,
            ),
          ),
        ),
        Divider(color: Colors.grey[200],),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
          child: ListTile(
            leading: Container(
              child: Image.network(
                'https://image.shutterstock.com/image-vector/spa-resort-beauty-business-poster-600w-387064471.jpg',
                fit: BoxFit.cover,
                height: 50.0,
                width: 80.0,
              ),
            ),
            title: Text(
              '5 YUMMY SMOOTHIES TO ADD TO YOUR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
            subtitle: Text(
              'I HAVE BEEN A FUNCTIONAL LAZY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300
              ),
              maxLines: 1,
            ),
          ),
        ),
        Divider(color: Colors.grey[200],),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
          child: ListTile(
            leading: Container(
              child: Image.network(
                'https://image.shutterstock.com/image-vector/spa-resort-beauty-business-poster-600w-387064471.jpg',
                fit: BoxFit.cover,
                height: 50.0,
                width: 80.0,
              ),
            ),
            title: Text(
              '5 YUMMY SMOOTHIES TO ADD TO YOUR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
            subtitle: Text(
              'I HAVE BEEN A FUNCTIONAL LAZY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300
              ),
              maxLines: 1,
            ),
          ),
        ),
        Divider(color: Colors.grey[200],),
      ],
    );
  }
}
