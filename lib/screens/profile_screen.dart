import 'package:flutter/material.dart';
import 'package:news_app/widgets/profile_form.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "profile-screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.27,
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(120),
                            child: Image.asset(
                              'assets/profilePhoto.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Dinesh Yaduvanshi',
                      style: TextStyle(
                        color: Colors.orange[700],
                        fontSize: 20,
                      ),
                    ),
                    MaterialButton(
                      elevation: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 25,
                          width: 90,
                          child: Card(
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.orange[700],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Container(
                  child: ProfileForm(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
