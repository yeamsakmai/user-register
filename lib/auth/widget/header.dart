import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height / 2.6,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  // bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(300),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 160, left: 30),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
            );
  }
}