import 'package:doctor/core/helpers/extention.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.pushRepalcementNamed(Routes.loginScreen);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('SignUp'),
      ),
    );
  }
}
