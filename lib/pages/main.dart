import 'package:flutter/material.dart';
import 'package:school_mngmt/pages/dashboard.dart';
import 'package:school_mngmt/pages/StudentIdCard.dart';
import 'package:school_mngmt/pages/StudentProfile.dart';
import 'package:school_mngmt/pages/StudentAbsent.dart';
import 'package:school_mngmt/pages/StudentLateProfile.dart';
import 'package:school_mngmt/pages/BehaviourProfile.dart';
import 'package:school_mngmt/pages/HealthProfile.dart';
import 'package:school_mngmt/pages/SplashScreen.dart';
import 'DashboardScaffold.dart';
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
