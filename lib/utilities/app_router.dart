import 'package:flutter/material.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/profile_screen.dart';
import 'package:news_app/screens/video_screen.dart';


class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
        break;
      case ProfileScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => ProfileScreen(),
        );
        break;
      case VideoScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => VideoScreen(),
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
    }
  }
}
