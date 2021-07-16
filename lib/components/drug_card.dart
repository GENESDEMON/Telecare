import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecare/models/prescriptions.dart';
import 'package:telecare/size_config.dart';
import 'package:telecare/utils/colours.dart';

class DrugCard extends StatelessWidget {
  const DrugCard({
    Key key,
    @required this.drug,
  }) : super(key: key);
  final Prescriptions drug;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: getScreenHeight(100),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(13),
            color: CMAIN.withOpacity(0.1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 27, right: 27),
            child: Row(
              children: [
                Icon(
                  Icons.schedule,
                  color: CMAIN,
                  size: 23,
                ),
                SizedBox(width: getScreenWidth(17)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      drug.name,
                      style: GoogleFonts.roboto(
                        color: CMAIN,
                        fontWeight: FontWeight.w800,
                        fontSize: getScreenHeight(13),
                      ),
                    ),
                    SizedBox(height: getScreenHeight(11)),
                    Text(
                      "Usage: " + drug.usage,
                      style: GoogleFonts.roboto(
                        color: CMAIN.withOpacity(0.7),
                        fontWeight: FontWeight.w600,
                        fontSize: getScreenHeight(11),
                      ),
                    ),
                    SizedBox(height: getScreenHeight(11)),
                    Text(
                      "Doctor: " + drug.doctor,
                      style: GoogleFonts.roboto(
                        color: CMAIN.withOpacity(0.7),
                        fontWeight: FontWeight.w600,
                        fontSize: getScreenHeight(11),
                      ),
                    ),
                    SizedBox(height: getScreenHeight(11)),
                    Text(
                      "Duration: " + drug.day,
                      style: GoogleFonts.roboto(
                        color: CMAIN.withOpacity(0.7),
                        fontWeight: FontWeight.w600,
                        fontSize: getScreenHeight(11),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      drug.time,
                      style: GoogleFonts.roboto(
                        color: CMAIN.withOpacity(0.7),
                        fontWeight: FontWeight.w600,
                        fontSize: getScreenHeight(11),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
