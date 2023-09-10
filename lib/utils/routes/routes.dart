

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_flutter/utils/routes/routes_name.dart';
import 'package:getx_flutter/view/home_view.dart';
import 'package:getx_flutter/view/login_view.dart';

class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch(settings.name){
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => LoginScreen());
      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          );
        });


    }
  }
}