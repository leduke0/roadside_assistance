import 'package:flutter/material.dart';

class AcountScreen extends StatelessWidget {
  const AcountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 211, 211),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 52, 52),
        centerTitle: true,
        title: const Text('Profile'),
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
            const Center (
              child:  SizedBox(
                height: 20,
                child: Text("Name: Nkengla Ndele"),
              ),
            ),
            const Center(
              child:  SizedBox(
                height: 20,
                child: Text(
                  "Email: duke@gmail.com",
                  style: TextStyle(color: Color.fromARGB(255, 126, 123, 123)),
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    size: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 170, 69, 61),
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                 SizedBox(
                  height: 30,
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 223, 221, 221),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      
                    ),
                    title: Text("Language"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 223, 221, 221),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      
                    ),
                    title: Text("Language"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 223, 221, 221),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      
                    ),
                    title: Text("Language"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 223, 221, 221),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      
                    ),
                    title: Text("Language"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 223, 221, 221),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      
                    ),
                    title: Text("Language"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 223, 221, 221),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      
                    ),
                    title: Text("Language"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
