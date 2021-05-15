import 'package:flutter/material.dart';
import 'package:news_app/models/side_drawer_model.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/profile_screen.dart';
import 'package:news_app/screens/video_screen.dart';
import 'package:news_app/widgets/side_drawer.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey scaffoldKey = GlobalKey<ScaffoldState>();
  List<SideDrawerModel> _navigationItems = [
    SideDrawerModel(
      text: 'Home Screen',
      widget: HomeScreen(),
    ),
    SideDrawerModel(
      text: 'Profile Screen',
      widget: ProfileScreen(),
    ),
    SideDrawerModel(
      text: 'Video Screen',
      widget: VideoScreen(),
    ),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      drawer: SideDrawer(
        onPressed: (index) {
          setState(
            () {
              _selectedIndex = index;
            },
          );
          Navigator.pop(context);
        },
        navigationList: _navigationItems,
      ),
      body: _navigationItems[_selectedIndex].widget,
    );
  }
}
