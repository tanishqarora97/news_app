import 'package:flutter/material.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/profile_screen.dart';
import 'package:news_app/screens/video_screen.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          ListTile(
            title: Text(
              'Home',
              textAlign: TextAlign.center,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Divider(
              thickness: 1.5,
            ),
          ),
          ListTile(
            title: Text(
              'Profile',
              textAlign: TextAlign.center,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ProfileScreen();
                  },
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Divider(
              thickness: 1.5,
            ),
          ),
          ListTile(
            title: Text(
              'Videos',
              textAlign: TextAlign.center,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return VideoScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
