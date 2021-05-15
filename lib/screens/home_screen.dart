import 'package:flutter/material.dart';
import 'package:news_app/repositories/home_repo.dart';
import 'package:news_app/widgets/custom_card.dart';
import 'package:news_app/widgets/side_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "home-screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
        ),
        drawer: SideDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
              HomeRepo.homeScreenList.length,
              (index) {
                return CustomCard(
                  HomeRepo.homeScreenList[index].headingText,
                  HomeRepo.homeScreenList[index].description,
                  HomeRepo.homeScreenList[index].image,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
