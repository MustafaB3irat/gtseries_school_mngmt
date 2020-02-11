import 'package:flutter/material.dart';

import 'dashboard.dart';

class DashboardScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
        title: Text(
          'GT Series',
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lemonada'),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: dashboard(),
        color: Colors.grey[900],
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
