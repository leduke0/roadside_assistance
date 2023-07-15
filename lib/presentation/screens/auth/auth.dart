import 'package:flutter/material.dart';
import 'package:roadside_assistance/presentation/screens/auth/VerificationScreen.dart';
import 'package:roadside_assistance/components/side_menu.dart';
import 'package:roadside_assistance/presentation/screens/auth/login.dart';
import 'package:roadside_assistance/presentation/screens/auth/register.dart';
import 'package:roadside_assistance/presentation/screens/mechanics/HomeScreen.dart';
import 'package:roadside_assistance/common/widgets/navigation.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});


  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool switchScreen = true;
  void togScreen() {
    setState(() {
      switchScreen = !switchScreen;
    });
  }


  @override
  Widget build(BuildContext context) {
    if (switchScreen) {
      return Login(togScreen:togScreen);
    }
    return  Register(togScreen:togScreen);
    // return NavBar();
    // return const HomeScreen();
    // return const VerificationForm();
    // return SideMenu();
  }

}