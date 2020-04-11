import 'package:flutter/material.dart';

class OurServices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      color: Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: w * 0.5,
                height: 110,
                margin: EdgeInsets.only(left: 0.0, top: 6.0),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://tinyurl.com/wo26jrg',
                      fit: BoxFit.cover,
                      width: 160,
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 50.0,
                      child: Text(
                        'SKIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
//                width: w * 0.5,
                height: 110,
                margin: EdgeInsets.only(left: 0.0, top: 6.0),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://tinyurl.com/wo26jrg',
                      fit: BoxFit.cover,
                      width: 160,
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 50.0,
                      child: Text(
                        'HAIR',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 6.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: w * 0.5,
                height: 110,
                margin: EdgeInsets.only(left: 0.0, top: 6.0),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://tinyurl.com/wo26jrg',
                      fit: BoxFit.cover,
                      width: 160,
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 40.0,
                      child: Text(
                        'MAKE UP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
//                width: w * 0.5,
                height: 110,
                margin: EdgeInsets.only(left: 0.0, top: 6.0),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://tinyurl.com/wo26jrg',
                      fit: BoxFit.cover,
                      width: 160,
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 10.0,
                      child: Text(
                        'HANDS & FEET',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 6.0,),
        ],
      ),
//      child: GridView.builder(
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//          crossAxisCount: 2,
//          crossAxisSpacing: 4.0,
//          mainAxisSpacing: 4.0,
//          childAspectRatio: 1/1
//        ),
//        shrinkWrap: true,
//        itemBuilder: (context, index){
//          return SingleService();
//        },
//      ),
    );
  }
}
