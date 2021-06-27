import 'package:flutter/material.dart';
import 'package:telecare/components/bottom_nav.dart';
import 'package:telecare/components/conversation_list.dart';
import 'package:telecare/enum.dart';
import 'package:telecare/models/chat_users.dart';
import 'package:telecare/size_config.dart';
import 'package:telecare/utils/colours.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/01w.jpg",
        time: "Now"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL: "assets/images/04w.jpg",
        time: "23 Mar"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL: "assets/images/03w.jpg",
        time: "17 Mar"),
    ChatUsers(
        name: "Andrey Jones",
        messageText: "Can you please share the file?",
        imageURL: "assets/images/05w.jpg",
        time: "24 Feb"),
    ChatUsers(
        name: "John Wick",
        messageText: "How are you?",
        imageURL: "assets/images/07w.jpg",
        time: "18 Feb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CWHITE,
      appBar: AppBar(
        backgroundColor: CWHITE,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Chats",
          style: TextStyle(
            color: CMAIN,
            fontSize: getScreenHeight(17),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
        child: Container(
          child: Column(
            children: [
              ListView.builder(
                itemCount: chatUsers.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ConversationList(
                    name: chatUsers[index].name,
                    messageText: chatUsers[index].messageText,
                    imageUrl: chatUsers[index].imageURL,
                    time: chatUsers[index].time,
                    isMessageRead: (index == 0 || index == 3) ? true : false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNav(selectedMenu: Menu.chat),
    );
  }
}
