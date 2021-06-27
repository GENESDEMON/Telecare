import 'package:flutter/material.dart';
import 'package:telecare/components/book_card.dart';
import 'package:telecare/components/bottom_nav.dart';
import 'package:telecare/enum.dart';
import 'package:telecare/models/bookings.dart';
import 'package:telecare/size_config.dart';
import 'package:telecare/utils/colours.dart';

class Bookings extends StatelessWidget {
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
            "Bookings",
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
              Tab(child: Text("Upcoming")),
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
                        books.length,
                        (index) {
                          if (books[index].status == 'upcoming')
                            return BookCard(book: books[index]);
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
                        books.length,
                        (index) {
                          if (books[index].status == 'past')
                            return BookCard(book: books[index]);
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
          selectedMenu: Menu.bookings,
        ),
      ),
    );
  }
}
