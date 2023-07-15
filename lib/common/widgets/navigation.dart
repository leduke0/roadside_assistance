import 'package:flutter/material.dart';
// import 'package:roadside_assistance/screens/mechanics/AcountScreen.dart';
// import 'package:roadside_assistance/screens/mechanics/ChatScreen.dart';
// import 'package:roadside_assistance/screens/mechanics/HistoryScreen.dart';
// import 'package:roadside_assistance/screens/mechanics/HomeScreen.dart';
// import 'package:roadside_assistance/screens/mechanics/NotificationScreen.dart';

import 'package:roadside_assistance/presentation/screens/drivers/AcountScreen.dart';
import 'package:roadside_assistance/presentation/screens/drivers/ChatScreen.dart';
import 'package:roadside_assistance/presentation/screens/drivers/HistoryScreen.dart';
import 'package:roadside_assistance/presentation/screens/drivers/HomeScreen.dart';
import 'package:roadside_assistance/presentation/screens/drivers/NotificationScreen.dart';

class NavBar extends StatefulWidget {



  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

// current index
int _currentIdex = 0;

// list of screens to navigate to
final List<Widget> _screens = [
  const HomeScreen(),
  const ChatScreen(),
  const HistoryScreen(),
  const NotificationScreen(),
  const AcountScreen(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens [_currentIdex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color.fromARGB(255, 231, 59, 47),
        
        // backgroundColor: Colors.red[800],
        
        iconSize: 28,
        currentIndex: _currentIdex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
            // backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
            // backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: 'Notification',
            // backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Acount',
            // backgroundColor: Colors.blue,
            ),
        ],
        onTap: (index) {
          setState(() {
            _currentIdex = index;
          });
        },
        ),
    );
  }
}


