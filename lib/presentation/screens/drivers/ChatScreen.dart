import 'package:flutter/material.dart';
import 'package:roadside_assistance/components/SearchBar.dart';
import 'package:roadside_assistance/presentation/widgets/RecentChats.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chats",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children:  const [
           Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Text(
              'Messages',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 247, 241, 241)),
            ),
          ),
          SearchBar(),
          RecentChats()
        ],
      ),
    );
  }
}
