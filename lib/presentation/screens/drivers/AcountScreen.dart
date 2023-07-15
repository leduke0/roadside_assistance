import 'package:flutter/material.dart';

class AcountScreen extends StatelessWidget {
  const AcountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment
          children: [
            Container(
                // height: 400,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 0.5,
                        spreadRadius: 0.1,
                        // offset: const Offset(0, 3),
                      ),
                    ]),
                child: Column(
                  children: [
                    Center(
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
                    const Center(
                      child: SizedBox(
                        height: 20,
                        child: Text("Name: Nkengla Ndele"),
                      ),
                    ),
                    const Center(
                      child: SizedBox(
                        height: 20,
                        child: Text(
                          "Email: duke@gmail.com",
                          style: TextStyle(
                              color: Color.fromARGB(255, 126, 123, 123)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                              size: 20,
                            ),
                            label: const Text('Edit Profile'))
                      ],
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 0.5,
                      spreadRadius: 0.1,
                      // offset: const Offset(0, 3),
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  // Padding(
                  //   padding: EdgeInsets.only(top: 15),
                  //   child: Text(
                  //     "Settings",
                  //     style: TextStyle(
                  //       fontSize: 18,
                  //     ),
                  //   ),
                  // ),
                  ListTile(
                    leading: Icon(
                      Icons.language,
                    ),
                    title: Text("Language"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                    ),
                    title: Text("Language"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                    ),
                    title: Text("Address"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.language,
                    ),
                    title: Text("Language"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.help,
                    ),
                    title: Text("Help and support"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bookmarks_sharp,
                    ),
                    title: Text("About"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
