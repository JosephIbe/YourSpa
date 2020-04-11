import 'package:buddha_spa/pages/book.dart';
import 'package:buddha_spa/pages/my_profile.dart';
import 'package:buddha_spa/pages/sign_up.dart';
import 'package:buddha_spa/utils/constants.dart';
import 'package:buddha_spa/widgets/get_otp.dart';
import 'package:buddha_spa/widgets/search_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case bookNowRoute:
        return MaterialPageRoute(builder: (_)=> BookNow());
        break;
      case searchServicesRoute:
        return MaterialPageRoute(builder: (_)=> SearchServices());
        break;
      case otpRoute:
        return MaterialPageRoute(builder: (_)=> GetOTP());
        break;
      case signUpRoute:
        return MaterialPageRoute(builder: (_)=> SignUp());
        break;
      case myProfileRoute:
        return MaterialPageRoute(builder: (_)=> MyProfile());
        break;
      default:
        return MaterialPageRoute(builder: (_)=> Scaffold(
          body: Center(
            child: Text('No Route specified for ${settings.name}'),
          ),
        ));
    }
  }
}