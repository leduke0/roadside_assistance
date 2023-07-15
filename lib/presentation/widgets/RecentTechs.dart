import 'package:flutter/material.dart';
import 'package:roadside_assistance/presentation/screens/drivers/TechnicianScreen.dart';

class RecentTechs extends StatelessWidget {
  const RecentTechs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < 10; i++)
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "TechnicianProfileScreen");
              },
              child: Container(
                margin: EdgeInsets.only(right: 15),
                width: 250,
                // padding: const EdgeInsets.symmetric(vertical: 10),
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: Color.fromARGB(34, 253, 3, 3)),
                // margin: const EdgeInsets.all(10),
                // // color: Colors.green,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 241, 241),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 2,
                      ),
                    ]),
                child: Center(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 35,
                          child: Icon(Icons.person),
                        ),
                        isThreeLine: true,
                        title: const Text('Nkengla Muluh'),
                        subtitle: Text(
                          'Bambili 4 conners \n rating:',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        child: Text(
                          'Services: Flat Tire, Engine oil, Fuel top, Cabritor etc...',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
