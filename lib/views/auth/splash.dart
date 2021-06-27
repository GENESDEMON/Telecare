import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecare/utils/colours.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacementNamed(context, '/signin');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CMAIN,
      body: Center(
        child: Text(
          "Telecare",
          style: GoogleFonts.dmSerifDisplay(
            color: CWHITE,
            fontWeight: FontWeight.w600,
            fontSize: 39,
          ),
        ),
      ),
    );
  }
}
