// Importing necessary packages
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:play_it/Screens/Login/Login.dart';
import 'package:play_it/Screens/home.dart';
import 'package:play_it/model/register_request_model.dart';
import 'package:play_it/model/register_response_model.dart';
import 'package:play_it/services/api_services.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

import '../../config.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Global key to uniquely identify the Form widget
  final _formKey = GlobalKey<FormState>();
  bool isApicallProcess = false;

  // TextEditingController for handling user input
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // Form validation
  bool _validateForm() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      return false;
    }
    if (passwordController.text != confirmPasswordController.text) {
      return false;
    }

    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if (!emailRegex.hasMatch(emailController.text)) {
      return false;
    }

    return true;
  }
  //  static var  client = http.Client(); 
  // // Function to send the registration data to the API
  // void _registerUser() async {
    
  //   const String apiUrl = 'http://10.0.0.7:3000/register';

  //   // Gather user registration data
  //   String username = nameController.text;
  //   String email = emailController.text;
  //   String password = passwordController.text;
  //   String confirmpassword = confirmPasswordController.text;

    

  //   try {
  //     // Send a POST request to the API
  //     final response = await http.post(Uri.parse(apiUrl),
        
  //         body: {
  //           "username": username,
  //           "email": email,
  //           "password":password,
  //           "confirmpassword":confirmpassword,
  //         });

  //     if (response.statusCode == 201 || response.statusCode == 200) {
  //        ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //           content: Text("Sucessfullyregister: "),
  //         ),
  //       );
  //       // Registration successful, navigate to login screen
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => LoginScreen()),
  //       );
  //     } else {
  //       print("erroe: ${response.statusCode}");
  //       // Registration failed, show an error message
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //           content: Text("Failed to register: "),
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     // Error occurred while making the request
  //     print('error is $e');
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //         content: Text('Error connecting to the server. Please try again.'),
  //       ),
  //     );
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          actions: [
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              color: Colors.white70,
              iconSize: 30,
            ),
          ],
          backgroundColor: Color.fromARGB(255, 1, 98, 143),
        ),
        backgroundColor: Color.fromARGB(255, 1, 98, 143),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 110, 0),
                  child: Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
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
                          decoration: InputDecoration(
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
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            errorStyle: TextStyle(color: Colors.red),
                            // Set error text color
                            hintText: 'Full Name',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      // TextFormField for Email
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      // TextFormField for Password
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_clock_outlined),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      // TextFormField for Confirm Password
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: TextFormField(
                          controller: confirmPasswordController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_clock_outlined),
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      SizedBox(height: 80),
                      // ElevatedButton for SignUp
                      Padding(
                        padding: const EdgeInsets.fromLTRB(230, 0, 10, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
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
                            onPressed: () {
                              if (_validateAndSave()) {
                                    setState(() {
                                      isApicallProcess = true;
                                    });
                                    RegisterRequestModel model = RegisterRequestModel(
                                        username: nameController.text,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        confirmpassword: confirmPasswordController.text
                                        );

                                    ApiServices.register(model).then((response) {
                                      setState(() {
                                        isApicallProcess = false;
                                      });
                                      FormHelper.showSimpleAlertDialog(
                                      context,
                                      Config.appName,
                                      " Registration Sucessfull Login to the account",
                                      "OK",
                                      () {
                                       Navigator.pushNamedAndRemoveUntil(
                                          context, "/login", (route) => false);
                                      }
                                      );
                                    });
                                  } else {
                                    
                                    FormHelper.showSimpleAlertDialog(
                                        context,
                                        Config.appName,
                                        "Something Went wrong ",
                                        "OK",
                                        () {
                                          Navigator.pop(context);
                                        }
                                        );
                                  }
                            },
                            label: Row(
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
                            icon: SizedBox.shrink(),
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
                SizedBox(
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
                          Container(
                            child: Image.network(
                                'http://pngimg.com/uploads/google/google_PNG19635.png'),
                          ),
                          SizedBox(width: 50.0),
                          // Add some space between the icon and text
                          Text(
                            "Signup with Google",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
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
                        Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text(
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
    );
  }
   bool _validateAndSave() {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
