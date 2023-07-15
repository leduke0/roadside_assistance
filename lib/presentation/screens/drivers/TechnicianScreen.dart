import 'package:flutter/material.dart';
import 'package:roadside_assistance/components/SearchBar.dart';
import 'package:roadside_assistance/presentation/screens/drivers/TechnicianProfileScreen.dart';
import 'package:flutter_rating_native/flutter_rating_native.dart';

class TechnicianScreen extends StatelessWidget {
  const TechnicianScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Technicians"),
        centerTitle: true,
      ),
      body:
          ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          ),
          const SearchBar(),
          Container(
            
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            
            child: Column(
              children: [
                for (int i = 0; i < 10; i++)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "TechnicianProfileScreen");
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 2))
                ]),
                        // height: 65,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: const CircleAvatar(
                                radius: 30,
                                child: Icon(
                                  Icons.person,
                                  size: 25,
                                ),
                              ),
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
                                      "Location: Bambili",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                    
                                    FlutterRating(
                                      rating: 3.5,
                                      size: 20,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
