import 'package:flutter/material.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            enabled: false,
            decoration: InputDecoration(
              labelText: 'Location',
            ),
            initialValue:
                'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
            maxLines: 2,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Pincode',
            ),
            initialValue: 'xxxxxxx',
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Date of Birth',
            ),
            initialValue: 'dd-mm-yyyy',
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Gender',
            ),
            initialValue: 'Male',
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'WhatsApp',
              prefixText: '+91',
            ),
            initialValue: 'xxxxxxxxx',
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
            initialValue: 'xxxxx@gmail.com',
          ),
        ],
      ),
    );
  }
}
