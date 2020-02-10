import 'package:flutter/material.dart';

import 'models/Health.dart';
import 'HealthProfileCard.dart';

class HealthProfile extends StatelessWidget {
  final List<Health> data = [
    Health(
      date: '20/9/2019',
      number: '14',
      details: 'لا شيء',
      notes: 'لا شيء',
    ),
    Health(
      date: '20/9/2019',
      number: '14',
      details: 'لا شيء',
      notes: 'لا شيء',
    ),
    Health(
      date: '20/9/2019',
      number: '14',
      details: 'لا شيء',
      notes: 'لا شيء',
    ),
    Health(
      date: '20/9/2019',
      number: '14',
      details: 'لا شيء',
      notes: 'لا شيء',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text(
          'الملف الصحي',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: Colors.white,
            fontFamily: 'Lemonada',
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[900],
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children:
                  data.map((health) => HealthProfileCard(health)).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
