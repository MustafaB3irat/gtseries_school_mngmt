import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../DashboardScaffold.dart';

class FinalStageLogin extends StatefulWidget {
  @override
  _FinalStageLoginState createState() => _FinalStageLoginState();
}

class _FinalStageLoginState extends State<FinalStageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffFAB045), // status bar color
        brightness: Brightness.dark, // status bar brightness
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffFAB045), Color(0xffE67316)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[900].withOpacity(0.8),
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        autocorrect: false,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Lemonada',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'أدخل اسم المستخدم',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Lemonada',
                              color: Colors.white70),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        maxLines: 1,
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        autocorrect: false,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Lemonada',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'أدخل كلمة المرور',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Lemonada',
                              color: Colors.white70),
                          prefixIcon: Icon(
                            MdiIcons.lock,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        maxLines: 1,
                        obscureText: true,
                      ),
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashboardScaffold()));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: Colors.grey[900],
                      ),
                      label: Text(
                        'تسجيل دخول',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: 'Lemonada',
                            color: Colors.grey[900]),
                      ),
                      color: Colors.amberAccent,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
