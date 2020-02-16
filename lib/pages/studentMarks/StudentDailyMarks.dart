import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';

import '../../models/DailyMarks.dart';

class StudentDailyMarks extends StatefulWidget {
  @override
  _StudentDailyMarksState createState() => _StudentDailyMarksState();
}

class _StudentDailyMarksState extends State<StudentDailyMarks> {
  List<DailyMarks> dailyMarks = [
    DailyMarks(
        num: '1',
        details: 'نهائية',
        date: '16/2/2020',
        avg: '65.3',
        course: 'Math',
        mark: '70.5',
        maxMark: '85'),
    DailyMarks(
        num: '2',
        details: 'نهائية',
        date: '1/2/2020',
        avg: '70.3',
        course: 'اللغة العربية',
        mark: '95.5',
        maxMark: '96'),
    DailyMarks(
        num: '3',
        details: 'نهائية',
        date: '15/1/2020',
        avg: '50',
        course: 'علوم حياتية',
        mark: '70.5',
        maxMark: '90'),
    DailyMarks(
        num: '4',
        details: 'نهائية',
        date: '12/2/2020',
        avg: '90',
        course: 'اللغة الانجليزي',
        mark: '96.5',
        maxMark: '100'),
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
            'علامات التقييمات اليومية',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lemonada'),
          ),
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return markCard(dailyMarks[index]);
          },
          itemCount: dailyMarks.length,
        ),
      ),
    );
  }

  Widget markCard(DailyMarks dailyMarks) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ExpansionCard(
        title: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white12,
                  child: Center(
                    child: Text(
                      dailyMarks.num,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lemonada',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.grey[850],
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      color: Colors.white70.withOpacity(0.2), width: 1.0))),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'الموضوع',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Lemonada',
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                dailyMarks.course,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lemonada',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                dailyMarks.date,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Lemonada',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'العلامة',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Lemonada',
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                dailyMarks.mark,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lemonada',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
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
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'البيان',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Lemonada',
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    dailyMarks.details,
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Lemonada',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'العلامة القصوى',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Lemonada',
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    dailyMarks.maxMark,
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Lemonada',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'معدل الصف',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Lemonada',
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    dailyMarks.avg,
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Lemonada',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
