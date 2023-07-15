import 'package:flutter/material.dart';
import 'package:roadside_assistance/presentation/screens/drivers/TechnicianScreen.dart';
import 'package:roadside_assistance/common/widgets/navigation.dart';
import 'package:roadside_assistance/components/side_menu.dart';
import 'package:roadside_assistance/presentation/widgets/RecentTechs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const SideDrawer(),
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Technicians',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 247, 241, 241)),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "TechnicianScreen");
                    },
                    child: Text(
                      'View More',
                      style: TextStyle(color: Colors.red),
                    ))
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 180,
                // decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.5),

                //           blurRadius: 10,
                //           spreadRadius: 2,
                //           offset: const Offset(0, 3),
                //         ),
                //       ]
                //       ),
                child: RecentTechs(),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Container(
                height: 400,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 241, 241),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: const Offset(0, 3),
                      ),
                    ]),
                child: Column()),
          ),
        ],
      ),
    );
  }
}
