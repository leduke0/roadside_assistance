import 'package:flutter/material.dart';
import 'package:roadside_assistance/presentation/screens/auth/VerificationScreen.dart';

class Register extends StatelessWidget {
  final Function togScreen;
  const Register({super.key, required this.togScreen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 212, 211, 211),
        body: Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => togScreen(),
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Color.fromARGB(255, 58, 57, 57),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Create Acount",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "create new acount",
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
                            Icons.person_2_outlined,
                            size: 30,
                          ),
                          labelText: "NAME",
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
                      style: const TextStyle(
                        color: Color.fromARGB(255, 58, 57, 57),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.mail,
                            size: 30,
                          ),
                          labelText: "EMAIL",
                          labelStyle: TextStyle(
                              fontSize: 16,
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
                      style: const TextStyle(
                        color: Color.fromARGB(255, 58, 57, 57),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon:  Icon(
                            Icons.phone,
                            size: 30,
                          ),
                          labelText: "PHONE NUMBER",
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
                      style: const TextStyle(
                        color: Color.fromARGB(255, 58, 57, 57),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.location_pin,
                            size: 30,
                          ),
                          labelText: "Location",
                          labelStyle: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 128, 126, 126),
                              )),
                    ),
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
                          ),
                          labelText: "PASSWORD",
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
                          ),
                          labelText: "CONFIRM PASSWORD",
                          labelStyle: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 128, 126, 126),
                             )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(const Color.fromARGB(255, 170, 69, 61)),
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
                               const VerificationForm() ));
                      },
                        child: const Text("Create account"),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                          onPressed: () => togScreen(),
                          child: const Text(
                            "Login",
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
      ),
    );
  }
}
