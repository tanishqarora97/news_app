import 'package:flutter/material.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _pincodeController = TextEditingController();
  TextEditingController _dateOfBirthController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _whatsappController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
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
    );
  }
}
