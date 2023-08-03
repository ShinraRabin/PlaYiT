// Importing necessary packages
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'package:play_it/Screens/Login/Login.dart';
import 'package:play_it/Screens/home.dart';

import 'package:play_it/services/api_services.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Global key to uniquely identify the Form widget
  final _formKey = GlobalKey<FormState>();
  bool showSpinner = false;
  // TextEditingController for handling user input
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  

  // Form validation
  String? validateForm(String? value) {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      return 'please fill it proprley';
    }
    if (passwordController.text != confirmPasswordController.text) {
      return 'Passwords do not match';
    }

    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if (!emailRegex.hasMatch(emailController.text)) {
      return 'Please enter a valid email';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Scaffold(
          appBar: AppBar(
            leading: Container(),
            actions: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                color: Colors.white70,
                iconSize: 30,
              ),
            ],
            backgroundColor: const Color.fromARGB(255, 1, 98, 143),
          ),
          backgroundColor: const Color.fromARGB(255, 1, 98, 143),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 110, 0),
                    child: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // TextFormField for Name
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                          child: TextFormField(
                            controller: nameController,
                            validator: validateForm,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.person_3_rounded),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 16.0),
                              // Adjust the padding
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              errorStyle: TextStyle(color: Colors.red),
                              // Set error text color
                              hintText: 'Full Name',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        // TextFormField for Email
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextFormField(
                            controller: emailController,
                            validator: validateForm,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        // TextFormField for Password
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextFormField(
                            controller: passwordController,
                            validator: validateForm,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.lock_clock_outlined),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        // TextFormField for Confirm Password
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextFormField(
                            controller: confirmPasswordController,
                            validator: validateForm,
                            
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.lock_clock_outlined),
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(color: Colors.white70),
                              
                            ),
                          ),
                        ),
                        const SizedBox(height: 80),
                        // ElevatedButton for SignUp
                        Padding(
                          padding: const EdgeInsets.fromLTRB(230, 0, 10, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 79, 162, 201),
                                  Color.fromARGB(255, 0, 23, 26),
                                ],
                                begin: Alignment.centerLeft,
                                // Alignment of the gradient starting point
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: ElevatedButton.icon(
                              onPressed: () async {
                                if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                                  setState(() {
                                    showSpinner = true;
                                  });
                                  String username = nameController.text;
                                  String email = emailController.text;
                                  String password = passwordController.text;

                                  await ApiServices().registerAuthData(
                                      context, username, email, password);

                                  setState(() {
                                    showSpinner = false;
                                  });
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'Please fill all the fields correctly.'),
                                  ),
                                );
                                }
                              },
                              label: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'SignUp',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              icon: const SizedBox.shrink(),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  // Container and ElevatedButton for "Signup with Google"
                  Container(
                    width: 300,
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                                'http://pngimg.com/uploads/google/google_PNG19635.png'),
                            const SizedBox(width: 40.0),
                            // Add some space between the icon and text
                            ElevatedButton(onPressed: () {
                              ApiServices().googlelogin(context);

                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              disabledForegroundColor: Colors.transparent.withOpacity(1), 
                              disabledBackgroundColor: Colors.transparent.withOpacity(1), 
    
                            ), child:const Text(
                              "Signup with Google",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87
                              ),
                            ),
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Container, ElevatedButton, and Text for "Already have an account?"
                  Container(
                    width: 400,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(70, 0, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()),
                              );
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  
}
