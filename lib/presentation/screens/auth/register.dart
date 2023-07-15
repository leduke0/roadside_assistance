// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:roadside_assistance/data/models/user_model.dart';
import 'package:roadside_assistance/domain/providers/auth_providers.dart';
import 'package:roadside_assistance/presentation/screens/auth/VerificationScreen.dart';

class Register extends StatefulWidget {
  final Function togScreen;
  Register({super.key, required this.togScreen});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmPasswordController = TextEditingController();

  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _authProvider = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 211, 211),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
              child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => widget.togScreen(),
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
                      controller: nameController,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 58, 57, 57),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.person_2_outlined,
                            size: 30,
                          ),
                          labelText: "NAME",
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 128, 126, 126),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        } else if (value.length < 3) {
                          return 'Name must be atleast 3 characters long';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      controller: emailController,
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
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        } else if (!value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      controller: phoneController,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 58, 57, 57),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.phone,
                            size: 30,
                          ),
                          labelText: "PHONE NUMBER",
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 128, 126, 126),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your phone number';
                        } else if (value.length < 9) {
                          return 'Phone number must be atleast 9 characters long';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      controller: passwordController,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        } else if (value.length < 6) {
                          return 'Password must be atleast 6 characters long';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      controller: confirmPasswordController,
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
                      validator: (value) {
                        if (value.toString() != passwordController.text) {
                          return 'Passwords don\'t match';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Consumer<AuthProvider>(
                    builder: (context, ref, child) {
                      return SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 170, 69, 61)),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ))),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                final userModel = UserModel(
                                  names: nameController.text,
                                  email: emailController.text,
                                  phoneNumber: phoneController.text,
                                );
                                await context.read<AuthProvider>().signUpUser(
                                    userModel, passwordController.text);
                                if (_authProvider.signupSuccess == true) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const VerificationForm(),
                                    ),
                                  );
                                } else {
                                  Fluttertoast.showToast(
                                      toastLength: Toast.LENGTH_LONG,
                                      backgroundColor: Colors.red,
                                      msg:
                                          "Sorry, something went wrong, try again");
                                }
                              }
                            },
                            child: _authProvider.isLoadingSignup == false
                                ? const Text("Create account")
                                : const CircularProgressIndicator(),
                          ));
                    },
                  ),
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
                          onPressed: () => widget.togScreen(),
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
            ),
          ))),
    );
  }
}
