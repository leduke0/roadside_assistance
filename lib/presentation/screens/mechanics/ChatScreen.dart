import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 211, 211),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 52, 52),
        centerTitle: true,
        title: const Text('Messages'),
      ),
      body: Container(
        
      )
    );
  }
}
