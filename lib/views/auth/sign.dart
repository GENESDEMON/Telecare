import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecare/size_config.dart';
import 'package:telecare/utils/colours.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: CBLACK.withOpacity(0.8),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 100, bottom: 100, left: 50, right: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Connect with your doctors \nseamlessly and quickly",
                    style: GoogleFonts.roboto(
                      color: CWHITE,
                      fontWeight: FontWeight.w500,
                      fontSize: getScreenHeight(18),
                      letterSpacing: 1.5,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(30),
                  ),
                  FlatButton(
                    color: CWHITE,
                    height: getScreenHeight(50),
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/dashboard');
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.google,
                          size: 17, //Icon Size
                          color: Colors.red, //Color Of Icon
                        ),
                        SizedBox(width: getScreenWidth(7)),
                        Text(
                          "Continue with google",
                          style: GoogleFonts.roboto(
                            color: CMAIN,
                            fontWeight: FontWeight.w700,
                            fontSize: getScreenHeight(13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
