import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal[900],
      ),
      home: MainScreen(),
      title: 'News App',
    );
  }
}
