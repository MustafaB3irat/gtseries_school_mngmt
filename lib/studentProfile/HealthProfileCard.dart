import 'package:flutter/material.dart';
import '../models/Health.dart';
import 'package:expansion_card/expansion_card.dart';

class HealthProfileCard extends StatelessWidget {
  final Health health;

  HealthProfileCard(this.health);

  @override
  Widget build(BuildContext context) {
    return ExpansionCard(
      title: Container(
        color: Colors.grey[850],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Directionality(
                textDirection: TextDirection.rtl,
                child: new ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                  subtitle: Text(
                    'الرقم',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    health.number,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.confirmation_number,
                    size: 35,
                    color: Colors.white,
                  ),
                )),
            Divider(
              height: 10.0,
              color: Colors.grey[900],
            ),
            new Directionality(
                textDirection: TextDirection.rtl,
                child: new ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                  title: Text(
                    health.date,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'التاريخ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  leading: Icon(
                    Icons.date_range,
                    size: 35,
                    color: Colors.white,
                  ),
                )),
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
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              title: Text(
                health.details,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.details,
                size: 35,
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
                health.notes,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'الملاحظات',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                Icons.note,
                color: Colors.white,
                size: 35,
              ),
            )),
      ],
    );
  }
}
