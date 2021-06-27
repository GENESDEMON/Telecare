import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecare/enum.dart';
import 'package:telecare/size_config.dart';
import 'package:telecare/utils/colours.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final Menu selectedMenu;
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Menu.home == selectedMenu ? CMAIN : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/dashboard'),
              ),
              IconButton(
                icon: Icon(
                  Icons.book_online,
                  color:
                      Menu.bookings == selectedMenu ? CMAIN : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/bookings'),
              ),
              IconButton(
                icon: Icon(
                  Icons.messenger_sharp,
                  color: Menu.chat == selectedMenu ? CMAIN : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/chat'),
              ),
              IconButton(
                icon: Icon(
                  Icons.medical_services,
                  color: Menu.prescriptions == selectedMenu
                      ? CMAIN
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/prescriptions'),
              ),
              IconButton(
                icon: Icon(
                  Icons.account_circle,
                  color:
                      Menu.profile == selectedMenu ? CMAIN : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/you'),
              ),
            ],
          )),
    );
  }
}
