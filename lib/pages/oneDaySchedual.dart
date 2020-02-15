import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';

class OneDaySchedual extends StatelessWidget {
  final String day;
  final Map<String, String> classes;
  final int color;

  final colors = [
    0xff8782FF,
    0xffFDC106,
    0xffF06A3F,
    0xffF9AA40,
    0xff607D8B,
    0xff8BC34A,
    0xff9E9E9E
  ];

  OneDaySchedual({this.day, this.classes, this.color});

  List<Widget> cards = new List<Widget>();

  @override
  Widget build(BuildContext context) {
    int i = 0;
    classes.forEach((k, v) {
      cards.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 150,
          height: 100,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 10.0,
            color: Color(colors[i]),
            child: new Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    k,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(v == '---'? 'لا يوجد':v,
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ));
      cards.add(new SizedBox(
        width: 15,
      ));
      i++;
    });

    return Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
        width: double.infinity,
        color: Colors.grey[850],
        padding: EdgeInsets.all(5.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ExpansionCard(
            title: Container(
              color: Colors.grey[850],
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:AssetImage('assets/SchedualAvatar-min.jpg'),
                    ),
                    title: Text(
                      this.day,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lemonada',
                          fontSize: 18.0,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      'الجدول الأسبوعي',
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            borderRadius: 20.0,
            children: <Widget>[expandedCard()],
          ),
        ));
  }

  Widget expandedCard() {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Container(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: AlwaysScrollableScrollPhysics(),
              children: cards,
            ),
          ),
        ],
      ),
    );
  }
}
