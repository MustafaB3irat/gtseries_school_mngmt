import 'package:flutter/material.dart';

import 'FinalStageLogin.dart';
import '../DashboardScaffold.dart';

class LoginPickSchool extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginPickSchool> {
  List<String> _schools = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _schools = [
      'مدرسة كفرمالك الثانوية',
      'مدرسة أبو فلاح الأساسية',
      'مدرسة ذكور بيرزيت الأساسية',
      'مدرسة كفرمالك الثانوية',
      'مدرسة أبو فلاح الأساسية',
      'مدرسة ذكور بيرزيت الأساسية',
      'مدرسة كفرمالك الثانوية',
      'مدرسة أبو فلاح الأساسية',
      'مدرسة ذكور بيرزيت الأساسية',
      'مدرسة كفرمالك الثانوية',
      'مدرسة أبو فلاح الأساسية',
      'مدرسة ذكور بيرزيت الأساسية',
      'مدرسة كفرمالك الثانوية',
      'مدرسة أبو فلاح الأساسية',
      'مدرسة ذكور بيرزيت الأساسية',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orange[900],
        // status bar color
        brightness: Brightness.dark,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400]
            ],
            begin: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                '... قم باختيار مدرستك',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lemonada',
                  fontSize: 22.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/school.png',
                        width: 150,
                        height: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          items: _schools.map((String school) {
                            return DropdownMenuItem(
                              value: school,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    school,
                                    style: TextStyle(
                                        fontFamily: 'Lemonada',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.school),
                                ],
                              ),
                            );
                          }).toList(),
                          onChanged: (String value) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return FinalStageLogin();
                            }));
                          },
                          iconSize: 40,
                          elevation: 16,
                          style: TextStyle(color: Colors.black),
                          underline: Container(
                            height: 2,
                            color: Colors.grey[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
