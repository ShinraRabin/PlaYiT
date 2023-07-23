import 'package:flutter/material.dart';
import 'package:play_it/Screens/Login/Signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
                    context, MaterialPageRoute(builder: (context) => SignupScreen()));
              },
              color: Colors.white70,
              iconSize: 30,
            ),
          ],
          backgroundColor: Color(0xff00525d),
        ),
        backgroundColor: Color(0xff00525d),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 250, 0),
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                        child: TextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.email_outlined),
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
                                vertical: 20.0,
                                horizontal: 16.0), // Adjust the padding
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            errorStyle: TextStyle(
                                color: Colors.red), // Set error text color
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: TextFormField(
                          controller: _confirmPasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_clock_outlined,
                            ),

                            // Set error text color
                            hintText: 'Confrim Password',
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      SizedBox(height: 80),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(230, 0, 10, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 2, 105, 119),
                                Color.fromARGB(255, 0, 23, 26),
                              ],
                              begin: Alignment
                                  .centerLeft, // Alignment of the gradient starting point
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
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
                Container(
                  width: 300, // Adjust the width as per your requirement
                  height: 45, // Adjust the height as per your requirement
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                        20, 0, 0, 10), // Adjust the padding as needed
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
                          SizedBox(
                              width:
                                  50.0), // Add some space between the icon and text
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
                Container(
                  width: 400,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(70, 0, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Don't have a Accoynt",style: TextStyle(color: Colors.white),),
                        ElevatedButton(onPressed: (){
                          Navigator.push(
                         context, MaterialPageRoute(builder: (context) =>LoginScreen()));
                        }, 
                        child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                            ))
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
}
