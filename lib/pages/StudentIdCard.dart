import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StudentIdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'البطاقة الشخصية',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: Colors.white,
            fontFamily: 'Lemonada',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.grey[900],
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white10,
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 55,
                  ),
                  radius: 40,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'زين رائد ابراهيم ظرف',
                  style: TextStyle(
                    fontFamily: 'Lemonade',
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'رقم الطالب',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.filter_1,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '20160043',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'رقم الهوية',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.filter_2,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '421590829',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'اسم ولي الأمر',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.assignment_ind,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '	رائد ابراهيم ظرف',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'اسم الأم',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.assignment_ind,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '	فداء يعقوب',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'الصف',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.class_,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'الثامن الأساسي',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'تاريخ الميلاد',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.date_range,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '	18/08/2006',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'الجنس',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    MdiIcons.genderMaleFemale,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'ذكر',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'رقم البيت',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.phone,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '022920309',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'تلفون ولي الأمر',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.phone,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '0598579739',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'تلفون الأم',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.phone,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '0598579748',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'البريد الإلكتروني',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.mail,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              Text(
                'zainzaref@gmail.com',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'بريد الأب الإلكتروني',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.mail,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              Text(
                'ibrahimzaref@gmail.com',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'بريد الأم الإلكتروني',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.mail,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              Text(
                'fatemaYaqoub@gmail.com',
                style: TextStyle(
                  fontFamily: 'Lemonade',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[850],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'ملاحظات المدرسة',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    MdiIcons.note,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(15),
                color: Colors.amberAccent,
                child: Center(
                  child: new Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'طالب تمت اضافته في الأونة الأخيرة بناء على قرار 142',
                        style: TextStyle(
                          fontFamily: 'Lemonade',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[850],
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
