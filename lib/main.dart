import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roadside_assistance/domain/providers/auth_providers.dart';
import 'package:roadside_assistance/firebase_options.dart';
import 'package:roadside_assistance/presentation/screens/auth/auth.dart';
import 'package:roadside_assistance/presentation/screens/drivers/MessageScreen.dart';
import 'package:roadside_assistance/presentation/screens/drivers/TechnicianProfileScreen.dart';
import 'package:roadside_assistance/presentation/screens/drivers/TechnicianScreen.dart';

// void main() => runApp(MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return multiprovider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        theme: ThemeData(
          // errorColor: Colors.red,
          scaffoldBackgroundColor: Color.fromARGB(255, 152, 158, 153),
          primaryColor: Colors.green,
          appBarTheme: AppBarTheme(
              backgroundColor: Color.fromARGB(255, 152, 158, 153),
              foregroundColor: Colors.black),

          useMaterial3: true,
        ),
        routes: {
          "/": (context) => Auth(),
          "MessageScreen": (context) => MessageScreen(),
          "TechinicianScreen": (context) => TechnicianScreen(),
          "TechnicianProfileScreen": (context) => TechnicialProfileScreen(),
          "TechnicianScreen": (context) => TechnicianScreen(),
        },

        // home: NavigationBar(),
      ),
    );
  }
}
