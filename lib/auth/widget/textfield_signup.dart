import 'package:flutter/material.dart';

Widget TextfieldSignup({required String labelName}) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: TextField(
      style: TextStyle(
        color: Colors.orange,
        fontSize: 18,
      ),
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.orange,
          ),
        ),
        label: Text(
          '$labelName',
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
      ),
    ),
  );
}
