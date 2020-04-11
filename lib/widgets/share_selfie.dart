import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:image_picker/image_picker.dart';

class ShareSelfie extends StatefulWidget {
  @override
  _ShareSelfieState createState() => _ShareSelfieState();
}

class _ShareSelfieState extends State<ShareSelfie> {

  var selectedImage;

  @override
  void initState() {
    super.initState();
    selectedImage = null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          selectedImage == null
            ? Container(
            height: 80.0,
            width: 80.0,
            color: Colors.white,
            child: Center(
              child: IconButton(
                onPressed: ()=> chooseImageDialog(context),
                icon: Icon(FeatherIcons.camera, color: Theme.of(context).accentColor,),
              ),
            ),
          )
            : GestureDetector(
                onTap: ()=> chooseImageDialog(context),
                child: Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: selectedImage,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
          ),
//          Container(
//            width: MediaQuery.of(context).size.width,
//            margin: EdgeInsets.symmetric(horizontal: 45.0),
//            child: OutlineButton.icon(
//              onPressed: ()=> shareImage,
//              label: Text('SHARE', style: TextStyle(fontWeight: FontWeight.bold),),
//              icon: Icon(FeatherIcons.arrowRight, color: Theme.of(context).accentColor,),
//              color: Theme.of(context).primaryColor,
//              textColor: Colors.white,
//              padding: EdgeInsets.symmetric(vertical: 10.0),
//              borderSide: BorderSide(
//                  color: Theme.of(context).accentColor,
//                  style: BorderStyle.solid,
//                  width: 0.8
//              ),
//            ),
//          )
          GestureDetector(
            onTap: ()=> shareImage,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 45.0),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).accentColor,
                      style: BorderStyle.solid,
                      width: 0.8
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(4.0)
              ),
              child: ListTile(
                title: Center(
                  child: Text('SHARE',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                trailing: Icon(FeatherIcons.arrowRight, color: Colors.pinkAccent,),
              ),
            ),
          ),

        ],
      ),
    );
  }

  void chooseImageDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext ctx){
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Theme.of(context).accentColor, width: 0.8)
          ),
          child: Container(
            height: 180.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    onTap: ()=> takePhoto(context),
                    title: Text(
                      'Take Photo',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                  ListTile(
                    onTap: ()=> pickPhoto(context),
                    title: Text(
                      'Choose from Gallery',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                  ListTile(
                    onTap: ()=> Navigator.of(context).pop(),
                    title: Text(
                      'Cancel',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }

  Future<void> takePhoto(BuildContext context) {}

  Future<void> pickPhoto(BuildContext context) {}

  void shareImage() { }

}
