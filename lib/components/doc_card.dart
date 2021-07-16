import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecare/components/chatDetailPage.dart';
import 'package:telecare/models/doctor.dart';
import 'package:telecare/size_config.dart';
import 'package:telecare/utils/colours.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key key,
    @required this.doctor,
  }) : super(key: key);
  final Doctors doctor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      child: Container(
        width: double.infinity,
        height: getScreenHeight(70),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(13),
          color: CBLACK.withOpacity(0.1),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 27, right: 27),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  doctor.image,
                  height: getScreenHeight(45),
                  width: getScreenWidth(45),
                ),
              ),
              SizedBox(width: getScreenWidth(17)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    doctor.name,
                    style: GoogleFonts.roboto(
                      color: CMAIN,
                      fontWeight: FontWeight.w800,
                      fontSize: getScreenHeight(13),
                    ),
                  ),
                  SizedBox(height: getScreenHeight(5)),
                  Text(
                    doctor.role,
                    style: GoogleFonts.roboto(
                      color: CMAIN.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                      fontSize: getScreenHeight(11),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.schedule,
                color: CMAIN,
                size: 23,
              ),
              SizedBox(width: getScreenWidth(9)),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ChatDetailPage();
                  }));
                },
                child: Icon(
                  Icons.message,
                  color: CMAIN,
                  size: 23,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
