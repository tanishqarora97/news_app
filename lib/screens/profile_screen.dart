import 'package:flutter/material.dart';
import 'package:news_app/widgets/side_drawer.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = "profile-screen";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _pincodeController = TextEditingController();
  TextEditingController _dateOfBirthController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _whatsappController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Profile Screen'),
        ),
        drawer: SideDrawer(),
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: _locationController,
                        decoration: InputDecoration(
                          labelText: 'Location',
                        ),
                      ),
                      TextFormField(
                        controller: _pincodeController,
                        decoration: InputDecoration(
                          labelText: 'Pincode',
                        ),
                      ),
                      TextFormField(
                        controller: _dateOfBirthController,
                        decoration: InputDecoration(
                          labelText: 'Date of Birth',
                        ),
                      ),
                      TextFormField(
                        controller: _genderController,
                        decoration: InputDecoration(
                          labelText: 'Gender',
                        ),
                      ),
                      TextFormField(
                        controller: _whatsappController,
                        decoration: InputDecoration(
                          labelText: 'WhatsApp',
                        ),
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
