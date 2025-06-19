import 'dart:io';

import 'package:brightstart/assets/vector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginWithTypes extends StatelessWidget {
  const LoginWithTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Divider(
                color: const Color.fromARGB(255, 9, 9, 9),
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'or',
                style: TextStyle(color: const Color.fromARGB(255, 10, 10, 10)),
              ),
            ),
            Expanded(
              child: Divider(
                color: const Color.fromARGB(255, 9, 9, 9),
                thickness: 1,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(Vector.google, width: 40, height: 40),
            SvgPicture.asset(Vector.facebook, width: 40, height: 40),
            if (Platform.isIOS)
              SvgPicture.asset(Vector.apple, width: 40, height: 40),
          ],
        ),
      ],
    );
  }
}
