import 'package:flutter/material.dart';

import 'models/absent.dart';
import 'StudentAbsentCard.dart';

class StudentAbsent extends StatelessWidget {
  final List<Absent> data = [
    Absent(
        date: '20/9/2019', excuse: 'مرض', details: 'لا شيء', notes: 'لا شيء'),
    Absent(
        date: '20/9/2019', excuse: 'زيارة', details: 'لا شيء', notes: 'لا شيء'),
    Absent(
        date: '20/9/2019', excuse: 'عرس', details: 'لا شيء', notes: 'لا شيء'),
    Absent(
        date: '20/9/2019', excuse: '....', details: 'لا شيء', notes: 'لا شيء'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text(
          'GT Series',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey[900],
          child: Column(
            children: [


            ]
          ),
        ),
      ),
    );
  }
}
