import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';

import '../models/StudentDiscussions.dart';

class StudentDiscussionsWodget extends StatefulWidget {
  @override
  _StudentDiscussionsWodgetState createState() =>
      _StudentDiscussionsWodgetState();
}

class _StudentDiscussionsWodgetState extends State<StudentDiscussionsWodget> {
  List<StudentDiscussions> _discussions = [
    StudentDiscussions(
        name: 'بخصوص العلوم الحياتية',
        date: '16/2/2020',
        teacher: 'محمد عبد الباقي'),
    StudentDiscussions(
        name: 'بخصوص الرياضيات والوظائف',
        date: '10/2/2020',
        teacher: 'مهند دار محسن'),
    StudentDiscussions(
        name: 'البراكين والزلازل', date: '9/2/2020', teacher: 'صفوان حسن'),
    StudentDiscussions(
        name: 'دور الطالب في الصف', date: '5/2/2020', teacher: 'هلال دار عودة'),
    StudentDiscussions(
        name: 'ندوة الهلال الأحمر القادمة',
        date: '3/2/2020',
        teacher: 'سراج عبدالوهاب'),
  ];

  @override
  Widget build(BuildContext context) {
    _discussions.sort((a, b) {
      return a.toString().compareTo(b.toString());
    });

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        resizeToAvoidBottomPadding: true,
        appBar: AppBar(
          elevation: 10.0,
          backgroundColor: Colors.grey[850],
          centerTitle: true,
          title: Text(
            'حلقات النقاش',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lemonada'),
          ),
          bottom: TabBar(tabs: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.filter_list,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'حلقات النقاش',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lemonada'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.format_list_numbered_rtl,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'قائمتي',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lemonada'),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: _discussions
                    .map((discussion) => createDiscussionCard(discussion))
                    .toList(),
              ),
            ),
          ),
          SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text('قائمتي!'),
            ),
          ),
        ]),
      ),
    );
  }

  Widget createDiscussionCard(StudentDiscussions studentDiscussions) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: Colors.grey[850],
      child: ExpansionCard(
        title: Container(
          padding: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                studentDiscussions.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lemonada'),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                studentDiscussions.date,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Divider(
                  height: 20,
                  color: Colors.grey[900],
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        size: 25,
                        color: Colors.white,
                      ),
                      Text(
                        'المعلم',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    studentDiscussions.teacher,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Lemonada',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(height: 30, color: Colors.grey[900]),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.green,
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
