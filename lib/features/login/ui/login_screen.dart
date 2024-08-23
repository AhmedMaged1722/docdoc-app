import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.person_pin_outlined,
              size: 30,
            ),
          ),
        ],
        title: const Text('Login Screen'),
      ),
      body: const Center(
        child: Text('Login Screen'),
      ),
    );
  }
}
