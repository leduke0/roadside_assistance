import 'package:flutter/material.dart';

class MessageModal extends StatelessWidget {
  const MessageModal({super.key});

  

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor:  const Color.fromARGB(255, 212, 211, 211),
    appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 53, 52, 52),
    ),
    body: Padding(padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 17),
    child: Center(
      child: Card(
        color: const Color.fromARGB(255, 173, 171, 171),
      // elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(
              height: 20,
              child: Text("Car Model: BMW 2023"),
            ),
            const SizedBox(
              height: 20,
              child: Text("Message: BMW 2023"),
            ),
            Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 180,
                        ),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.all(15),
                              side: const BorderSide(color: Colors.black),
                            ),
                            child: const Text(
                              "Accept",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 238, 66, 54),
                              padding: const EdgeInsets.all(15),
                            ),
                            child: const Text("Decline"),
                          ),
                        ),
                      ],
                    ),
          ],
        ),
      ),
      ),
    ),),
  );
  
}
}