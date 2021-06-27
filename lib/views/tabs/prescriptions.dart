import 'package:flutter/material.dart';
import 'package:telecare/components/bottom_nav.dart';
import 'package:telecare/enum.dart';
import 'package:telecare/size_config.dart';
import 'package:telecare/utils/colours.dart';

class Prescriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CWHITE,
      appBar: AppBar(
        backgroundColor: CWHITE,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Prescriptions",
          style: TextStyle(
            color: CMAIN,
            fontSize: getScreenHeight(17),
          ),
        ),
      ),
      body: Container(),
      bottomNavigationBar: CustomBottomNav(selectedMenu: Menu.prescriptions),
    );
  }
}
