import 'package:flutter/material.dart';
import 'package:school_mngmt/studentProfile/StudentIdCard.dart';
import 'package:school_mngmt/studentProfile/StudentProfile.dart';
import 'package:school_mngmt/studentProfile/StudentAbsent.dart';
import 'package:school_mngmt/studentProfile/StudentLateProfile.dart';
import 'package:school_mngmt/studentProfile/BehaviourProfile.dart';
import 'package:school_mngmt/studentProfile/HealthProfile.dart';


import 'package:school_mngmt/pages/Login/LoginPickType.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:LoginPickType(),
      routes: {
        '/studentProfile': (context) => StudentProfile(),
        '/studentIdCard': (context) => StudentIdCard(),
        '/studentAbsent': (context) => StudentAbsent(),
        '/studentLateProfile': (context) => StudentLateProfile(),
        '/studentBehaviourProfile': (context) => BehaviourProfile(),
        '/studentHealthProfile': (context) => HealthProfile(),
      },
    );
  }
}
