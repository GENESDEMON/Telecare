import 'package:flutter/material.dart';
import 'package:telecare/components/bottom_nav.dart';
import 'package:telecare/components/drug_card.dart';
import 'package:telecare/enum.dart';
import 'package:telecare/models/prescriptions.dart';
import 'package:telecare/size_config.dart';
import 'package:telecare/utils/colours.dart';

class Prescriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          bottom: TabBar(
            labelColor: CMAIN,
            unselectedLabelColor: CMAIN.withOpacity(0.6),
            indicatorColor: Colors.orangeAccent,
            tabs: [
              Tab(child: Text("Ongoing")),
              Tab(child: Text("Past")),
            ],
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 17, right: 17),
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: getScreenHeight(30)),
                      ...List.generate(
                        drugs.length,
                        (index) {
                          if (drugs[index].status == 'ongoing')
                            return DrugCard(drug: drugs[index]);
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
                        drugs.length,
                        (index) {
                          if (drugs[index].status == 'past')
                            return DrugCard(drug: drugs[index]);
                          return SizedBox
                              .shrink(); // here by default width and height is 0
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNav(
          selectedMenu: Menu.prescriptions,
        ),
      ),
    );
  }
}
