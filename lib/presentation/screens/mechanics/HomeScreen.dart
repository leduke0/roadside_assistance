import 'package:flutter/material.dart';
import 'package:roadside_assistance/common/widgets/navigation.dart';
import 'package:roadside_assistance/components/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Builder(
        //   builder: (BuildContext context){
        //     return const Scaffold(drawer: SideDrawer(),);
        //   },
        // ),
        // leading:  GestureDetector(
        //   onTap: () {
        //                   Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                     builder: (context) =>
        //                        const SideDrawer()));
        //                 },
        //    child: const Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        // ),
        // actions: const [
        //   Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 17),
        //       child: Icon(
        //         Icons.notifications_active_outlined,
        //         color: Colors.black,
        //       )),
        // ],
        backgroundColor: const Color.fromARGB(255, 53, 52, 52),
      ),
      drawer: const SideDrawer(),
      backgroundColor: const Color.fromARGB(255, 212, 211, 211),
      // appBar: AppBar(
      //     backgroundColor: Colors.white,
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: SafeArea(
          child: ListView(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,

              //   children: [
              //     IconButton(
              //       onPressed: () {},
              //       iconSize: 45,
              //       icon: const Icon(Icons.person),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  width: 350,
                  height: 230,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 158, 154, 154),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Balance: 5000frs",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 140,
                      ),
                      Text(
                        "Nkengla Muluh Ndele",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
