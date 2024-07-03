import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register_project/auth/view/sign_in.dart';
import 'package:register_project/auth/widget/textfield_signup.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 25, 85),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 25, 85),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create\nAccount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextfieldSignup(labelName: 'Name'),
              TextfieldSignup(labelName: 'Email'),
              TextfieldSignup(labelName: 'Password'),
              TextfieldSignup(labelName: 'Confirm Password'),
              SizedBox(height: 60),
              SizedBox(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange),
                  ),
                  onPressed: () {},
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(SignIn()),
                      child: Text(
                        ' SIGN IN',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
