import 'package:chatapp/Custom_UI/custom_card.dart';
import 'package:chatapp/Model/chat_model.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List<ChatModel> chats = [
    ChatModel(name: "Dev Stack", icon: "person.svg", isGroup: false, time: "4:00", currentMessage: "Hi Everyone"),
    ChatModel(name: "Rishi", icon: "person.svg", isGroup: false, time: "10:00", currentMessage: "Hi Rishi"),
    ChatModel(name: "Dev Server Chat", icon: "group.svg", isGroup: true, time: "10:00", currentMessage: "Hi Everyone on this group"),
    ChatModel(name: "Keshav", icon: "person.svg", isGroup: false, time: "5:00", currentMessage: "Hello Rohit"),
    ChatModel(name: "Friends forever", icon: "group.svg", isGroup: true, time: "8:00", currentMessage: "Hello Buddies"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
