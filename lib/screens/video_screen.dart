import 'package:flutter/material.dart';
import 'package:news_app/widgets/side_drawer.dart';

class VideoScreen extends StatelessWidget {
  static const routeName = "video-screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: SideDrawer(),
        body: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
