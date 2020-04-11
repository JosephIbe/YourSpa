import 'package:flutter/material.dart';

class ManiPedi extends StatefulWidget {
  @override
  _ManiPediState createState() => _ManiPediState();
}

class _ManiPediState extends State<ManiPedi> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Theme.of(context).primaryColor,
            margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 6.0),
            child: ListView(
              children: <Widget>[
                Divider(color: Colors.grey[200],),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 0.0),
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
                      'HAND CARE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                    trailing: Icon(Icons.arrow_drop_down, color: Theme.of(context).accentColor,),
                  ),
                ),
                Divider(color: Colors.grey[200],),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 0.0),
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
                      'FEET CARE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                    trailing: Icon(Icons.arrow_drop_down, color: Theme.of(context).accentColor,),
                  ),
                ),
                Divider(color: Colors.grey[200],),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 0.0),
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
                      'NAILS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                    trailing: Icon(Icons.arrow_drop_down, color: Theme.of(context).accentColor,),
                  ),
                ),
                Divider(color: Colors.grey[200],),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
