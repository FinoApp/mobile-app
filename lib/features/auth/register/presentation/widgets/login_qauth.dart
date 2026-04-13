import 'package:flutter/material.dart';

class LoginQauth extends StatelessWidget {
  const LoginQauth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          child: Image.asset('images/google.png', width: 70, height: 70),
        ),
        GestureDetector(
          child: Image.asset('images/facebook.png', width: 70, height: 70),
        ),
        GestureDetector(
          child: Image.asset('images/x.png', width: 70, height: 70),
        ),
      ],
    );
  }
}
