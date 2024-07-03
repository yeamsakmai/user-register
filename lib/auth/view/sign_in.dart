import 'package:flutter/material.dart';
import 'package:register_project/auth/widget/header.dart';
import 'package:register_project/auth/widget/textfield_signin.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 25, 85),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            TextfieldSignin(),
          ],
        ),
      ),
    );
  }
}
