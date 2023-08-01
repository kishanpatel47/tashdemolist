import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/Screen/Homescreen.dart';
import 'package:tasklist/bottomnavigation/Bottomnavigation.dart';
import 'package:tasklist/navigation/route_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routesscreen.Home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case Routesscreen.Bottomscreen:
        return MaterialPageRoute(
          builder: (context) => Bottomscreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Center(
            child: Text('No Page  found'),
          ),
        );
    }
  }
}
