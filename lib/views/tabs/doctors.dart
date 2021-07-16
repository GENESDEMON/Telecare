import 'package:flutter/material.dart';
import 'package:telecare/components/bottom_nav.dart';
import 'package:telecare/components/doc_card.dart';
import 'package:telecare/enum.dart';
import 'package:telecare/models/doctor.dart';
import 'package:telecare/size_config.dart';
import 'package:telecare/utils/colours.dart';

class Doctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CWHITE,
      appBar: AppBar(
        backgroundColor: CWHITE,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Doctors",
          style: TextStyle(
            color: CMAIN,
            fontSize: getScreenHeight(17),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 23,
          right: 23,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                                    if (doctores[index].role == 'Cardiologist')
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
      bottomNavigationBar: CustomBottomNav(
        selectedMenu: null,
      ),
    );
  }
}
