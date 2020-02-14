import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StudentSchedual extends StatefulWidget {
  @override
  _StudentSchedualState createState() => _StudentSchedualState();
}

class _StudentSchedualState extends State<StudentSchedual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'GT Series',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
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
      ),

    );
  }
}
