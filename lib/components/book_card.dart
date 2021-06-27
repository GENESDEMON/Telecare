import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecare/models/bookings.dart';
import 'package:telecare/size_config.dart';
import 'package:telecare/utils/colours.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    Key key,
    @required this.book,
  }) : super(key: key);
  final Bookings book;
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
                    book.name,
                    style: GoogleFonts.roboto(
                      color: CMAIN,
                      fontWeight: FontWeight.w800,
                      fontSize: getScreenHeight(13),
                    ),
                  ),
                  SizedBox(height: getScreenHeight(5)),
                  Text(
                    book.role,
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
                    book.day,
                    style: GoogleFonts.roboto(
                      color: CMAIN,
                      fontWeight: FontWeight.w800,
                      fontSize: getScreenHeight(13),
                    ),
                  ),
                  SizedBox(height: getScreenHeight(5)),
                  Text(
                    book.time,
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
    );
  }
}
