import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StudentProfile extends StatefulWidget {
  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ملف الطالب',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: Colors.white,
            fontFamily: 'Lemonada',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  height: 100,
                  child: new Directionality(
                      textDirection: TextDirection.rtl,
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/studentIdCard');
                        },
                        color: Color(0xff8782FF),
                        textColor: Colors.white,
                        icon: Icon(
                          Icons.perm_identity,
                          size: 30,
                          color: Colors.white,
                        ),
                        label: Text(
                          'البطاقة الشخصية',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lemonada'),
                        ),
                      )),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  height: 100,
                  child: new Directionality(
                      textDirection: TextDirection.rtl,
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/studentAbsent');
                        },
                        color: Color(0xffF06A3F),
                        textColor: Colors.white,
                        icon: Icon(
                          MdiIcons.close,
                          size: 30,
                          color: Colors.white,
                        ),
                        label: Text(
                          'الغيابات',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lemonada'),
                        ),
                      )),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  height: 100,
                  child: new Directionality(
                      textDirection: TextDirection.rtl,
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/studentLateProfile');
                        },
                        color: Color(0xffFDC106),
                        textColor: Colors.white,
                        icon: Icon(
                          MdiIcons.clockOut,
                          size: 30,
                          color: Colors.white,
                        ),
                        label: Text(
                          'التأخيرات',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lemonada'),
                        ),
                      )),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  height: 100,
                  child: new Directionality(
                      textDirection: TextDirection.rtl,
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/studentBehaviourProfile');
                        },
                        color: Color(0xff8BC34A),
                        textColor: Colors.white,
                        icon: Icon(
                          MdiIcons.policeBadge,
                          size: 30,
                          color: Colors.white,
                        ),
                        label: Text(
                          'الملف السلوكي',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lemonada'),
                        ),
                      )),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  height: 100,
                  child: new Directionality(
                      textDirection: TextDirection.rtl,
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/studentHealthProfile');
                        },
                        color: Color(0xff9E9E9E),
                        textColor: Colors.white,
                        icon: Icon(
                          MdiIcons.heartPulse,
                          size: 30,
                          color: Colors.white,
                        ),
                        label: Text(
                          'الملف الصحي',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lemonada'),
                        ),
                      )),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
