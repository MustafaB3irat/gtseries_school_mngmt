import 'package:flutter/material.dart';

import '../models/Behaviour.dart';
import 'package:school_mngmt/studentProfile/BehaviourProfileCard.dart';

class BehaviourProfile extends StatelessWidget {
  final List<Behaviour> data = [
    Behaviour(
        date: '20/9/2019',
        entrance: '---',
        details: 'لا شيء',
        notes: 'لا شيء',
        studentId: '2060043',
        semester: '2',
        points: '10',
        behave: 'جيد',
        judgement: 'فصل مؤقت'),
    Behaviour(
        date: '20/9/2019',
        entrance: 'زيارة',
        details: 'لا شيء',
        notes: 'لا شيء',
        studentId: '2060043',
        semester: '1',
        points: '15',
        behave: 'جيد',
        judgement: 'فصل مؤقت'),
    Behaviour(
        date: '20/9/2019',
        entrance: '****',
        details: 'لا شيء',
        notes: 'لا شيء',
        studentId: '2060043',
        semester: '2',
        points: '20',
        behave: 'جيد',
        judgement: 'فصل مؤقت'),
    Behaviour(
        date: '20/9/2019',
        entrance: '....',
        details: 'لا شيء',
        notes: 'لا شيء',
        studentId: '2060043',
        semester: '4',
        points: '10',
        behave: 'جيد',
        judgement: 'فصل مؤقت'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text(
          'الملف السلوكي',
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
              children: data
                  .map((behaviour) => BehaviourProfileCard(behaviour))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
