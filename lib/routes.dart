import 'package:flutter/material.dart';
import 'package:telecare/views/auth/sign.dart';
import 'package:telecare/views/auth/splash.dart';
import 'package:telecare/views/tabs/bookings.dart';
import 'package:telecare/views/tabs/dashboard.dart';
import 'package:telecare/views/tabs/doctors.dart';
import 'package:telecare/views/tabs/prescriptions.dart';
import 'package:telecare/views/tabs/you.dart';

var routes = <String, WidgetBuilder>{
  '/splash': (BuildContext context) => new SplashScreen(),
  '/signin': (BuildContext context) => new SignIn(),
  '/dashboard': (BuildContext context) => new Dashboard(),
  '/bookings': (BuildContext context) => new Bookings(),
  '/doctors': (BuildContext context) => new Doctor(),
  '/prescriptions': (BuildContext context) => new Prescriptions(),
  '/you': (BuildContext context) => new You(),
};
