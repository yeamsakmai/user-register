import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register_project/auth/view/sign_up.dart';

class TextfieldSignin extends StatelessWidget {
  TextfieldSignin({super.key});
  final txt_username = TextEditingController();
  final txt_pass = TextEditingController();
  Future putData() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: txt_username.text,
        password: txt_pass.text,
      );
      log("${credential}");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Column(
        children: [
          TextField(
            controller: txt_username,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2, color: const Color.fromARGB(255, 117, 117, 117)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.orange,
                ),
              ),
              label: Text(
                'Email',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(height: 40),
          TextField(
            controller: txt_pass,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2, color: const Color.fromARGB(255, 117, 117, 117)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.orange,
                ),
              ),
              label: Text(
                'Password',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 210, top: 30),
            child: Text(
              'Forgot Passwords',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 400,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.orange),
              ),
              onPressed: () {
                putData();
                if (putData() == 1) {
                  log("success");
                }
                print("${txt_username.text.toString()}");
                print("${txt_pass.text.toString()}");
              },
              child: Text(
                'SIGN IN',
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
                  'Don\'t have an account? ',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.to(SignUp()),
                  child: Text(
                    ' SIGN UP',
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
    );
  }
}
