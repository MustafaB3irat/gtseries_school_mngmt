import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../DashboardScaffold.dart';
import '../spinners/FadingCubeSpinner.dart';

class FinalStageLogin extends StatefulWidget {
  @override
  _FinalStageLoginState createState() => _FinalStageLoginState();
}

class _FinalStageLoginState extends State<FinalStageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurple[900],
        // status bar color
        brightness: Brightness.dark,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple[900],
              Colors.deepPurple[800],
              Colors.deepPurple[400]
            ],
            begin: Alignment.topCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lemonada',
                        color: Colors.white),
                  ),
                  Text(
                    'مرحباً بعودتكم',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(75, 0, 130, 0.3),
                              blurRadius: 40,
                              offset: Offset(0, 10))
                        ]),
                        child: Image.asset(
                          'assets/school.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.grey[850]))),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: TextField(
                                  autocorrect: false,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[90]),
                                  decoration: InputDecoration(
                                    hintText: 'أدخل اسم المستخدم',
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Lemonada',
                                        color: Colors.grey[850]),
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.grey[900],
                                      size: 30,
                                    ),
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.grey[850]))),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: TextField(
                                  autocorrect: false,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[900]),
                                  decoration: InputDecoration(
                                    hintText: 'أدخل كلمة المرور',
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Lemonada',
                                        color: Colors.grey[850]),
                                    prefixIcon: Icon(
                                      MdiIcons.lock,
                                      color: Colors.grey[900],
                                      size: 30,
                                    ),
                                  ),
                                  maxLines: 1,
                                  obscureText: true,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'هل نسيت كلمة المرور ؟',
                              style: TextStyle(color: Colors.grey[900]),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FadingCubeSpinner(themeColor: Colors.deepPurple[900])),
                                    (Route<dynamic> route) => false);
                              },
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.deepPurple[900],
                                ),
                                child: Center(
                                  child: Text(
                                    'تسجيل دخول',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Lemonada',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
