import 'package:flutter/material.dart';

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
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Notifications'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 2))
          ]),
        child: ListView(
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
                  // backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    // color: Color.fromARGB(255, 53, 52, 52),
                    size: 30,
                  ),
                ),
              ),
            ),
            const ListTile(
              title: Text('Name: Richard '),
              isThreeLine: true,
              subtitle: Text(
                  'Car Model: Rav4 \n Message: Flat tire and car engine service and fuel shortage'),
              leading: CircleAvatar(
                radius: 30,
                // backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  // color: Color.fromARGB(255, 53, 52, 52),
                  size: 30,
                ),
              ),
            ),
            const ListTile(
              title: Text('Name: Oga Bomboy'),
              isThreeLine: true,
              subtitle: Text(
                  'Car Model: Rav4 \n Message: Flat tire and car engine service'),
              leading: CircleAvatar(
                radius: 30,
                // backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  // color: Color.fromARGB(255, 53, 52, 52),
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
