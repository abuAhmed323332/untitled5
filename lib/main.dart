
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Confirm_password.dart';
import 'Register.dart';
import 'Send_Email.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "Send_Email",
        routes: {
          "Send_Email" : (context) => Send_Email() ,
          "Confirm_password":(context) => Confirm_password(),
          "Register":(context) => const Register(),

        }
    );
  }
}



var a=120.0;
