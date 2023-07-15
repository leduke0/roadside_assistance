import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("History"),
          centerTitle: true,
        ),
        body: Padding(
          padding:  const EdgeInsets.symmetric(vertical: 17, horizontal: 17),
          child: ListView(
            children:  [
              // Card(
              //   color: Color.fromARGB(255, 223, 221, 221),
              //   child: ListTile(
              //     leading: Icon(
              //       Icons.check_circle_outline,
              //       color: Colors.green,
              //     ),
              //     title: Text("Oga Bomboy"),
              //     subtitle: Text("Repaired flat tire and changed the car engine."),
              //     trailing: Icon(Icons.history),
              //   ),
              // ),
              //    Card(
              //   color: Color.fromARGB(255, 223, 221, 221),
              //   child: ListTile(
              //     leading: Icon(
              //       Icons.close_outlined,
              //       color: Colors.red,
              //     ),
              //     title: Text("Mr Clinton"),
              //     subtitle: Text("Rejected"),
              //     trailing: Icon(Icons.history),
              //   ),
              // ),
              // Card(
              //   color: Color.fromARGB(255, 223, 221, 221),
              //   child: ListTile(
              //     leading: Icon(
              //       Icons.check_circle_outline,
              //       color: Colors.green,
              //     ),
              //     title: Text("Mr Clinton"),
              //     subtitle: Text("Repaired flat tire and changed the car engine."),
              //     trailing: Icon(Icons.history),
              //   ),
              // ),
              // Card(
              //   color: Color.fromARGB(255, 223, 221, 221),
              //   child: ListTile(
              //     leading: Icon(
              //       Icons.check_circle_outline,
              //       color: Colors.green,
              //     ),
              //     title: Text("Mr Ernest"),
              //     subtitle: Text("Repaired flat tire and changed the car engine."),
              //     trailing: Icon(Icons.history),
              //   ),
              // ),
              // Card(
              //   color: Color.fromARGB(255, 223, 221, 221),
              //   child: ListTile(
              //     leading: Icon(
              //       Icons.close_outlined,
              //       color: Colors.red,
              //     ),
              //     title: Text("Mr Clinton"),
              //     subtitle: Text("Rejected"),
              //     trailing: Icon(Icons.history),
              //   ),
              // ),
              Container(
            
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            
            child: Column(
              children: [
                for (int i = 0; i < 10; i++)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 2))
                ]),
                      // height: 65,
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_box_rounded,
                            color: Colors.green,
                            size: 25,
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Oga Bomboy",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  
                                  Text(
                                    "Thanks for the service\n my car was back to go shape",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ), 
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )
            ],
          ),
        ),
        );
  }
}
