import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'oneDaySchedual.dart';

class StudentSchedual extends StatefulWidget {
  @override
  _StudentSchedualState createState() => _StudentSchedualState();
}

class _StudentSchedualState extends State<StudentSchedual> {

  var _schedual = [
    {
      'day': 'الأحد',
      'classes': {
        'الحصة الأولى': 'اللغة الانجليزية',
        'الحصة الثانية': 'اللغة الانجليزية',
        'الحصة الثالثة': 'التربية الدينية',
        'الحصة الرابعة': 'الرياضيات',
        'الحصة الخامسة': 'العلوم والحياة',
        'الحصة السادسة': 'اللغة العربية',
        'الحصة السابعة': '---'
      },
    },
    {
      'day': 'الاثنين',
      'classes': {
        'الحصة الأولى': 'اللغة الانجليزية',
        'الحصة الثانية': 'اللغة الانجليزية',
        'الحصة الثالثة': 'التربية الدينية',
        'الحصة الرابعة': 'الرياضيات',
        'الحصة الخامسة': 'العلوم والحياة',
        'الحصة السادسة': 'اللغة العربية',
        'الحصة السابعة': '---'
      }
    },
    {
      'day': 'الثلاثاء',
      'classes': {
        'الحصة الأولى': 'اللغة الانجليزية',
        'الحصة الثانية': 'اللغة الانجليزية',
        'الحصة الثالثة': 'التربية الدينية',
        'الحصة الرابعة': 'الرياضيات',
        'الحصة الخامسة': 'العلوم والحياة',
        'الحصة السادسة': 'اللغة العربية',
        'الحصة السابعة': '---'
      }
    },
    {
      'day': 'الأربعاء',
      'classes': {
        'الحصة الأولى': 'اللغة الانجليزية',
        'الحصة الثانية': 'اللغة الانجليزية',
        'الحصة الثالثة': 'التربية الدينية',
        'الحصة الرابعة': 'الرياضيات',
        'الحصة الخامسة': 'العلوم والحياة',
        'الحصة السادسة': 'اللغة العربية',
        'الحصة السابعة': '---'
      }
    },
    {
      'day': 'الخميس',
      'classes': {
        'الحصة الأولى': 'اللغة الانجليزية',
        'الحصة الثانية': 'اللغة الانجليزية',
        'الحصة الثالثة': 'التربية الدينية',
        'الحصة الرابعة': 'الرياضيات',
        'الحصة الخامسة': 'العلوم والحياة',
        'الحصة السادسة': 'اللغة العربية',
        'الحصة السابعة': '---'
      }
    },
    {
      'day': 'الجمعة',
      'classes': {
        'الحصة الأولى': '---',
        'الحصة الثانية': '---',
        'الحصة الثالثة': '---',
        'الحصة الرابعة': '---',
        'الحصة الخامسة': '---',
        'الحصة السادسة': '---',
        'الحصة السابعة': '---'
      }
    },
    {
      'day': 'السبت',
      'classes': {
        'الحصة الأولى': '---',
        'الحصة الثانية': '---',
        'الحصة الثالثة': '---',
        'الحصة الرابعة': '---',
        'الحصة الخامسة': '---',
        'الحصة السادسة': '---',
        'الحصة السابعة': '---'
      }
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'جدول الطالب الأسبوعي',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lemonada'),
          ),
        ),
        actions: <Widget>[
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    MdiIcons.logout,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'تسجيل خروج',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[900],
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _schedual.map((oneDay)=>OneDaySchedual(day: oneDay['day'],classes: oneDay['classes'],color: 0xff8782FF,)).toList()
          ),
        ),
      ),
    );
  }
}
