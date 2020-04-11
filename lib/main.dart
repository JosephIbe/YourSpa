import 'package:buddha_spa/utils/router.dart';
import 'package:buddha_spa/welcome.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookIt!',
      theme: ThemeData(
//        primaryColor: Colors.black,
        primaryColor: Color(0XFF0b0704),
        primaryColorDark: Color(0xFF0F0F0F),
//        primaryColorDark: Colors.black,
        accentColor: Colors.pinkAccent,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
      home: Welcome(),
    );
  }
}
