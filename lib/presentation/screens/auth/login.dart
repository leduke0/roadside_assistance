import 'package:flutter/material.dart';
import 'package:roadside_assistance/presentation/screens/auth/VerificationScreen.dart';
import 'package:roadside_assistance/presentation/screens/mechanics/HomeScreen.dart';
import 'package:roadside_assistance/common/widgets/navigation.dart';

class Login extends StatelessWidget {
  final Function togScreen;
  const Login({super.key, required this.togScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 211, 211),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              children:  [
                const SizedBox(
                  height: 40,
                ),
                const Icon(
                  Icons.person_outlined,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 110,
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Color.fromARGB(255, 58, 57, 57),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "sign in to continue",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 128, 126, 126),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Color.fromARGB(255, 58, 57, 57),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon:  Icon(
                          color: Color.fromARGB(255, 128, 126, 126),
                          Icons.mail,
                          size: 30,
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 128, 126, 126),
                            )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: TextFormField(
                    obscureText: true,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 58, 57, 57),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 30,
                          color: Color.fromARGB(255, 128, 126, 126),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 128, 126, 126),
                            )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot password",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 170, 69, 61),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 170, 69, 61),),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ))),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                NavBar() ));
                      },
                      child: const Text("Login"),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 58, 57, 57),
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                        onPressed: () => togScreen(),
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            color: Color.fromARGB(255, 170, 69, 61),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ))),
    );
  }
}


