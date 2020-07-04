import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';

import '../models/AbsentAndLate.dart';

class StudentAbsentAndLateCard extends StatelessWidget {
  final AbsentAndLate absent;

  StudentAbsentAndLateCard(this.absent);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ExpansionCard(
        title: Container(
          color: Colors.grey[850],
          child: Column(
            children: <Widget>[
              new Directionality(
                textDirection: TextDirection.rtl,
                child: new ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'العذر',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      Text(
                        absent.excuse,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.amberAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        height: 15.0,
                        color: Colors.white12,
                        thickness: 1.3,
                      )
                    ],
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(
                        Icons.date_range,
                        size: 18,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        absent.date,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 10,
                color: Colors.grey[900],
              ),
            ],
          ),
        ),
        children: <Widget>[
          new Directionality(
              textDirection: TextDirection.rtl,
              child: new ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                subtitle: Text(
                  'البيان',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  absent.details,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.amberAccent,
                      fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.details,
                  size: 25,
                  color: Colors.white,
                ),
              )),
          Divider(
            height: 10,
            color: Colors.grey[900],
          ),
          new Directionality(
              textDirection: TextDirection.rtl,
              child: new ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                title: Text(
                  absent.notes,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.amberAccent,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'الملاحظات',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                leading: Icon(
                  Icons.note,
                  color: Colors.white,
                  size: 25,
                ),
              )),
        ],
      ),
    );
  }
}
