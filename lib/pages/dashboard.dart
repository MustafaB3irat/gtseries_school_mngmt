import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flip_card/flip_card.dart';
import 'StudentSchedual.dart';
import 'studentMarks/StudentMarks.dart';
import 'StudentDiscussionsWidget.dart';

class dashboard extends StatefulWidget {
  @override
  _DashboardState createState() {
    // TODO: implement createState
    return _DashboardState();
  }
}

class _DashboardState extends State<dashboard> {
  Widget verticalDashItem(IconData icon, String name, int color) {
    return GestureDetector(
      onTap: () {
        if (name == 'ملف الطالب') {
          Navigator.pushNamed(context, '/studentProfile');
        } else if (name == 'العلامات') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => StudentMarks()));
        }
      },
      child: Material(
        color: Color(color),
        elevation: 10.0,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      icon,
                      size: 40,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget horizontalDashItem(IconData icon, String name, int color) {
    return GestureDetector(
      onTap: () {
        if (name == 'الرئيسية') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => StudentSchedual()));
        } else if (name == 'حلقات النقاش') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => StudentDiscussionsWodget()));
        }
      },
      child: Material(
        color: Color(color),
        elevation: 10.0,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StaggeredGridView.count(
      physics: ScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      children: <Widget>[
        horizontalDashItem(Icons.dashboard, "الرئيسية", 0xff8782FF),
        verticalDashItem(Icons.school, "العلامات", 0xffFDC106),
        verticalDashItem(
            Icons.supervised_user_circle, "ملف الطالب", 0xffF06A3F),
        horizontalDashItem(Icons.question_answer, "حلقات النقاش", 0xffF9AA40),
        verticalDashItem(Icons.map, "الخطة الإرشادية", 0xff607D8B),
        verticalDashItem(Icons.work, "الوظائف", 0xff8BC34A),
        horizontalDashItem(Icons.library_books, "المواد التعليمية", 0xff9E9E9E),
        verticalDashItem(Icons.date_range, "مواعيد زيارة الأهل", 0xffEC5862),
        verticalDashItem(Icons.attach_money, "الأقساط", 0xffEE5135),
        horizontalDashItem(Icons.message, "الرسائل", 0xff72b2a7),
      ],
      staggeredTiles: [
        StaggeredTile.extent(2, 90),
        StaggeredTile.extent(1, 120),
        StaggeredTile.extent(1, 120),
        StaggeredTile.extent(2, 90),
        StaggeredTile.extent(1, 120),
        StaggeredTile.extent(1, 120),
        StaggeredTile.extent(2, 90),
        StaggeredTile.extent(1, 120),
        StaggeredTile.extent(1, 120),
        StaggeredTile.extent(2, 90)
      ],
    );
  }
}
