import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({
    super.key,
  });

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const Message(
      {required this.text, required this.date, required this.isSentByMe});
}

class _MessageScreenState extends State<MessageScreen> {
  List<Message> messages = [
    Message(
      text: 'Are you sure?',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Yes sure',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: true,
    ),
    Message(
      text: 'I got a flat tire sir',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: true,
    ),
    Message(
      text: 'okay comming',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Engine failled?',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 3)),
      isSentByMe: true,
    ),
    Message(
      text: 'yes',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 3)),
      isSentByMe: false,
    ),
    Message(
      text: 'shortage of oil or fuel ',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 3)),
      isSentByMe: true,
    ),
    Message(
      text: 'shortage of oil or fuel ',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 3)),
      isSentByMe: true,
    ),
    Message(
      text: 'shortage of oil or fuel ',
      date: DateTime.now().subtract(Duration(days: 2, minutes: 3)),
      isSentByMe: true,
    ),
    Message(
      text: 'shortage of oil or fuel ',
      date: DateTime.now().subtract(Duration(days: 2, minutes: 3)),
      isSentByMe: false,
    ),
    Message(
      text: 'shortage of oil or fuel ',
      date: DateTime.now().subtract(Duration(days: 2, minutes: 3)),
      isSentByMe: false,
    ),
    Message(
      text: 'shortage of oil or fuel ',
      date: DateTime.now().subtract(Duration(days: 4, minutes: 3)),
      isSentByMe: true,
    ),
    Message(
      text: 'shortage of oil or fuel ',
      date: DateTime.now().subtract(Duration(days: 4, minutes: 1)),
      isSentByMe: true,
    ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 212, 211, 211),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: AppBar(
              leadingWidth: 30,
              centerTitle: true,
              title: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Oga Bomboy",
                      style: TextStyle(color: Colors.black87, fontSize: 20),
                    ),
                  )
                ],
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.call,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Icon(
                    Icons.more_vert,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: GroupedListView<Message, DateTime>(
                padding: const EdgeInsets.all(8),
                reverse: true,
                order: GroupedListOrder.DESC,
                useStickyGroupSeparators: true,
                floatingHeader: true,
                elements: messages,
                groupBy: (message) => DateTime(
                  message.date.year,
                  message.date.month,
                  message.date.day,
                ),
                groupHeaderBuilder: (Message message) => SizedBox(
                  height: 40,
                  child: Center(
                    child: Card(
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          DateFormat.yMMMd().format(message.date),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                itemBuilder: (context, Message message) => Align(
                  alignment: message.isSentByMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Card(
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(message.text),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3))
              ]),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      alignment: Alignment.centerRight,
                      width: 280,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Type Something",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.send,
                      size: 25,
                      color: Colors.blue[800],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
