import 'package:flutter/material.dart';
import './dashboard.dart';
import './StudentIdCard.dart';
import './StudentProfile.dart';
import './StudentAbsent.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Mngmt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.grey[850],
          title: Text(
            'GT Series',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: dashboard(),
      ),
      routes: {
        '/studentProfile': (context) => StudentProfile(),
        '/studentIdCard': (context) => StudentIdCard(),
        '/studentAbsent': (context) => StudentAbsent(),
      },
    );
  }
}
