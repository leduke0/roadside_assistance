
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(0),
            child: Container(
              // padding: const EdgeInsets.symmetric(vertical: 30),
              color: Color.fromARGB(255, 71, 69, 69),
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromARGB(255, 238, 66, 54),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: Text(
                        "Mr. Nkengla Ndele",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      child: Text(
                        "Technician",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile (
            leading: const Icon(Icons.home, size: 25,),
            title: const Text("Home", style: TextStyle(fontSize: 18),),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home, size: 25,),
            title: const Text("Home", style: TextStyle(fontSize: 18),),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home, size: 25,),
            title: const Text("Home", style: TextStyle(fontSize: 18),),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notification_add, size: 25,),
            title: const Text("Notification", style: TextStyle(fontSize: 18),),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings, size: 25,),
            title: const Text("Setting", style: TextStyle(fontSize: 18),),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home, size: 25,),
            title: const Text("Home", style: TextStyle(fontSize: 18),),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
