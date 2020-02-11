import 'package:flutter/material.dart';
import 'LoginPickSchool.dart';

class LoginPickType extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPickType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffFAB045), // status bar color
        brightness: Brightness.dark, // status bar brightness
      ),
      body: SafeArea(
        child: Container(
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
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'أيّهم أنت ؟',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lemonada',
                      color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPickSchool()));
                      },
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image.asset(
                                'assets/student.png',
                              ),
                              radius: 70.0),
                          Text(
                            'طالب',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lemonada',
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset(
                              'assets/teacher.png',
                            ),
                            radius: 70.0),
                        Text(
                          'معلم',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lemonada',
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset(
                              'assets/parent.png',
                            ),
                            radius: 70.0),
                        Text(
                          'ولي أمر',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lemonada',
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset(
                              'assets/admin.png',
                            ),
                            radius: 70.0),
                        Text(
                          'إدارة',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lemonada',
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
