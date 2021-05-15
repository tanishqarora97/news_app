import 'package:flutter/material.dart';
import 'package:news_app/models/side_drawer_model.dart';

class SideDrawer extends StatelessWidget {
  final Function onPressed;
  final List<SideDrawerModel> navigationList;
  SideDrawer({
    this.onPressed,
    this.navigationList,
  });
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
          ...List.generate(
            navigationList.length,
            (index) => ListTile(
              title: Text(
                navigationList[index].text,
                textAlign: TextAlign.center,
              ),
              onTap: () {
                onPressed(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}

//   Padding(
//     padding: EdgeInsets.only(
//       left: 10,
//       right: 10,
//     ),
//     child: Divider(
//       thickness: 1.5,
//     ),
//   ),
//   ListTile(
//     title: Text(
//       'Profile',
//       textAlign: TextAlign.center,
//     ),
//     onTap: () {
//       Navigator.of(context).push(
//         MaterialPageRoute(
//           builder: (context) {
//             return ProfileScreen();
//           },
//         ),
//       );
//     },
//   ),
//   Padding(
//     padding: EdgeInsets.only(
//       left: 10,
//       right: 10,
//     ),
//     child: Divider(
//       thickness: 1.5,
//     ),
//   ),
//   ListTile(
//     title: Text(
//       'Videos',
//       textAlign: TextAlign.center,
//     ),
//     onTap: () {
//       Navigator.of(context).push(
//         MaterialPageRoute(
//           builder: (context) {
//             return VideoScreen();
//           },
//         ),
//       );
//     },
//   ),
// ],
