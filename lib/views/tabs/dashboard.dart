import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecare/components/bottom_nav.dart';
import 'package:telecare/components/doc_card.dart';
import 'package:telecare/components/search.dart';
import 'package:telecare/enum.dart';
import 'package:telecare/models/doctor.dart';
import 'package:telecare/size_config.dart';
import 'package:telecare/utils/colours.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: CWHITE,
        body: Padding(
          padding: const EdgeInsets.only(left: 40, top: 130, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Natalie 👋",
                style: GoogleFonts.roboto(
                  color: CMAIN,
                  fontWeight: FontWeight.w500,
                  fontSize: getScreenHeight(27),
                ),
              ),
              SizedBox(
                height: getScreenHeight(10),
              ),
              Text(
                "How can we help you?",
                style: GoogleFonts.roboto(
                  color: CMAIN,
                  fontWeight: FontWeight.w400,
                  fontSize: getScreenHeight(19),
                ),
              ),
              SizedBox(
                height: getScreenHeight(30),
              ),
              SearchField(),
              SizedBox(
                height: getScreenHeight(40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Appointments",
                    style: GoogleFonts.roboto(
                      color: CMAIN,
                      fontWeight: FontWeight.w600,
                      fontSize: getScreenHeight(15),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/bookings');
                    },
                    child: Text(
                      "view all",
                      style: GoogleFonts.roboto(
                        color: CMAIN.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: getScreenHeight(11),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getScreenHeight(30),
              ),
              Container(
                width: double.infinity,
                height: getScreenHeight(100),
                decoration: BoxDecoration(
                  color: CMAIN,
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 27, right: 27),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: getScreenWidth(40),
                        height: getScreenHeight(60),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(13),
                          color: CWHITE,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WED",
                              style: GoogleFonts.roboto(
                                color: CMAIN.withOpacity(0.8),
                                fontWeight: FontWeight.w800,
                                fontSize: getScreenHeight(11),
                              ),
                            ),
                            SizedBox(height: getScreenHeight(5)),
                            Text(
                              "21",
                              style: GoogleFonts.roboto(
                                color: CMAIN.withOpacity(0.8),
                                fontWeight: FontWeight.w800,
                                fontSize: getScreenHeight(11),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: getScreenWidth(17)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cardiologist",
                            style: GoogleFonts.roboto(
                              color: CWHITE,
                              fontWeight: FontWeight.w400,
                              fontSize: getScreenHeight(17),
                            ),
                          ),
                          SizedBox(height: getScreenHeight(10)),
                          Text(
                            "08.07.21 - 8:00 am",
                            style: GoogleFonts.roboto(
                              color: CWHITE,
                              fontWeight: FontWeight.w300,
                              fontSize: getScreenHeight(11),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.video_call,
                        color: CWHITE,
                        size: 31,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getScreenHeight(30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Let's connect you to a doctor",
                    style: GoogleFonts.roboto(
                      color: CMAIN,
                      fontWeight: FontWeight.w600,
                      fontSize: getScreenHeight(15),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/doctors');
                    },
                    child: Text(
                      "view all",
                      style: GoogleFonts.roboto(
                        color: CMAIN.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: getScreenHeight(11),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getScreenHeight(30),
              ),
              DefaultTabController(
                length: 4,
                child: Flexible(
                  child: Column(
                    children: [
                      TabBar(
                          unselectedLabelColor: CMAIN.withOpacity(0.7),
                          labelColor: CMAIN,
                          isScrollable: true,
                          indicatorColor: Colors.orangeAccent,
                          tabs: [
                            Tab(child: Text("General")),
                            Tab(child: Text("Cardiologist")),
                            Tab(child: Text("Dentist")),
                            Tab(child: Text("Optician")),
                          ]),
                      Expanded(
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: getScreenHeight(30)),
                                  ...List.generate(
                                    doctores.length,
                                    (index) {
                                      if (doctores[index].role == 'Generalist')
                                        return DoctorCard(
                                            doctor: doctores[index]);
                                      return SizedBox
                                          .shrink(); // here by default width and height is 0
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: getScreenHeight(30)),
                                  ...List.generate(
                                    doctores.length,
                                    (index) {
                                      if (doctores[index].role ==
                                          'Cardiologist')
                                        return DoctorCard(
                                            doctor: doctores[index]);
                                      return SizedBox
                                          .shrink(); // here by default width and height is 0
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: getScreenHeight(30)),
                                  ...List.generate(
                                    doctores.length,
                                    (index) {
                                      if (doctores[index].role == 'Dentist')
                                        return DoctorCard(
                                            doctor: doctores[index]);
                                      return SizedBox
                                          .shrink(); // here by default width and height is 0
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: getScreenHeight(30)),
                                  ...List.generate(
                                    doctores.length,
                                    (index) {
                                      if (doctores[index].role == 'Optician')
                                        return DoctorCard(
                                            doctor: doctores[index]);
                                      return SizedBox
                                          .shrink(); // here by default width and height is 0
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNav(selectedMenu: Menu.home));
  }
}
