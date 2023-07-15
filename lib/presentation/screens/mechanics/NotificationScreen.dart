import 'package:flutter/material.dart';
import 'package:roadside_assistance/components/modal.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final AlertDialog dialog = AlertDialog(
      title: const Text('Message'),
      content: const Text(
          'My car just started jekking out of a suddenn and i got a sound from the bornet i guess it was over heating .'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('DECLINE'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('ACCEPT'),
        ),
      ],
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 211, 211),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 52, 52),
        centerTitle: true,
        title: const Text('Notifications'),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              showDialog<void>(context: context, builder: (context) => dialog);
            },
            child: const ListTile(
              title: Text('Name: Nkengla Ndele'),
              isThreeLine: true,
              subtitle: Text(
                  'Car Model: Rav4 \n Message: Flat tire and car engine service'),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 53, 52, 52),
                  size: 30,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Name: Richard '),
            isThreeLine: true,
            subtitle: Text(
                'Car Model: Rav4 \n Message: Flat tire and car engine service and fuel shortage'),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Color.fromARGB(255, 53, 52, 52),
                size: 30,
              ),
            ),
          ),
          ListTile(
            title: Text('Name: Oga Bomboy'),
            isThreeLine: true,
            subtitle: Text(
                'Car Model: Rav4 \n Message: Flat tire and car engine service'),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Color.fromARGB(255, 53, 52, 52),
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
