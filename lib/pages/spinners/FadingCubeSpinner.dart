import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../DashboardScaffold.dart';

class FadingCubeSpinner extends StatefulWidget {
  final Color themeColor;

  FadingCubeSpinner({this.themeColor});

  @override
  _FadingCubeSpinnerState createState() => _FadingCubeSpinnerState();
}

class _FadingCubeSpinnerState extends State<FadingCubeSpinner> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => DashboardScaffold()),
          (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: this.widget.themeColor,
      body: Center(
        child: SpinKitFadingCube(color: Colors.white, size: 80.0),
      ),
    );
  }
}
