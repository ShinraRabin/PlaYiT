import 'package:flutter/material.dart';
import 'package:play_it/Screens/Login/Login.dart';
import 'package:play_it/Screens/Login/Signup.dart';

import 'package:play_it/Screens/home.dart';
// import 'package:play_it/Screens/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     routes: {
        '/': (context) => Home(), 
        '/register': (context) => SignupScreen(),
        '/login': (context) => LoginScreen(),

      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      // ignore: prefer_const_constructors
      // home:Home(),
    );
  }
}
