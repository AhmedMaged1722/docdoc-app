import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool themeChange = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctors App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Doctors App',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                themeChange = !themeChange;
                if (themeChange) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Dark Theme Enabled'),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Light Theme Enabled'),
                    ),
                  );
                }
              },
              child: const Text('Change Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
