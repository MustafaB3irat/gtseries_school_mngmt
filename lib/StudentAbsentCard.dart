import 'package:flutter/material.dart';
import 'models/absent.dart';

class StudentAbsentCard extends StatelessWidget {
  final Absent absent;

  StudentAbsentCard(this.absent);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      color: Colors.white10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'التاريخ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    absent.date,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'البيان',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    absent.details,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'بعذر؟',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    absent.excuse,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'الملاحظات',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    absent.notes,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
