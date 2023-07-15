import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_rating_native/flutter_rating_native.dart';

class TechnicialProfileScreen extends StatelessWidget {
  const TechnicialProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tech Details'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 17),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment
          children: [
            const Center(
              child: SizedBox(
                // height: 50,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Color.fromARGB(255, 238, 66, 54),
                  child: Icon(
                    Icons.person,
                    size: 35,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Center(
              child: SizedBox(
                height: 30,
                child: Text(
                  "Nkengla Ndele",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
              child: FlutterRating(
                rating: 3.5,size: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.email,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.phone,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.green,
                    size: 25,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
              child: ListTile(
                  title: Text(
                'Location: Bambilli',
                style: TextStyle(fontSize: 16),
              )),
            ),
            const SizedBox(
              height: 70,
              child: ListTile(
                  title: Text(
                'Service per hour: 2000frs',
                style: TextStyle(fontSize: 16),
              )),
            ),
            const SizedBox(
              height: 30,
              child: ListTile(
                title: Text('About', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              subtitle: Text('Hello! As a roadside vehicle mechanic, your services are essential for drivers '),
              ),
            ),
          ],
        ),
      ),
    );
  }
}