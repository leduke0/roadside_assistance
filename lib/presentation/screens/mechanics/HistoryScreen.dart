import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 211, 211),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 52, 52),
          title: const Text("History"),
          centerTitle: true,
        ),
        body: Padding(
          padding:  const EdgeInsets.symmetric(vertical: 17, horizontal: 17),
          child: ListView(
            children: const [
              Card(
                color: Color.fromARGB(255, 223, 221, 221),
                child: ListTile(
                  leading: Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                  ),
                  title: Text("Oga Bomboy"),
                  subtitle: Text("Repaired flat tire and changed the car engine."),
                  trailing: Icon(Icons.history),
                ),
              ),
                 Card(
                color: Color.fromARGB(255, 223, 221, 221),
                child: ListTile(
                  leading: Icon(
                    Icons.close_outlined,
                    color: Colors.red,
                  ),
                  title: Text("Mr Clinton"),
                  subtitle: Text("Rejected"),
                  trailing: Icon(Icons.history),
                ),
              ),
              Card(
                color: Color.fromARGB(255, 223, 221, 221),
                child: ListTile(
                  leading: Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                  ),
                  title: Text("Mr Clinton"),
                  subtitle: Text("Repaired flat tire and changed the car engine."),
                  trailing: Icon(Icons.history),
                ),
              ),
              Card(
                color: Color.fromARGB(255, 223, 221, 221),
                child: ListTile(
                  leading: Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                  ),
                  title: Text("Mr Ernest"),
                  subtitle: Text("Repaired flat tire and changed the car engine."),
                  trailing: Icon(Icons.history),
                ),
              ),
              Card(
                color: Color.fromARGB(255, 223, 221, 221),
                child: ListTile(
                  leading: Icon(
                    Icons.close_outlined,
                    color: Colors.red,
                  ),
                  title: Text("Mr Clinton"),
                  subtitle: Text("Rejected"),
                  trailing: Icon(Icons.history),
                ),
              ),
            ],
          ),
        ));
  }
}
