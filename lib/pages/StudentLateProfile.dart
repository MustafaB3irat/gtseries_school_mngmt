import 'package:flutter/material.dart';

import '../models/AbsentAndLate.dart';
import 'package:school_mngmt/pages/StudentAbsentAndLateCard.dart';

class StudentLateProfile extends StatelessWidget {
  final List<AbsentAndLate> data = [
    AbsentAndLate(
        date: '20/9/2019', excuse: 'مرض', details: 'لا شيء', notes: 'لا شيء'),
    AbsentAndLate(
        date: '20/9/2019', excuse: 'زيارة', details: 'لا شيء', notes: 'لا شيء'),
    AbsentAndLate(
        date: '20/9/2019', excuse: 'عرس', details: 'لا شيء', notes: 'لا شيء'),
    AbsentAndLate(
        date: '20/9/2019', excuse: '....', details: 'لا شيء', notes: 'لا شيء'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text(
          'التأخيرات',
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
              data.map((absent) => StudentAbsentAndLateCard(absent)).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
