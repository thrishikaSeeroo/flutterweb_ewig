import 'package:east_and_west/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:east_and_west/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key})
      : super(key: key);

  // final Function(bool loggedIn) onLoginCallback;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:     SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
          child: Column(
            children: [
              Navigation()
            ],
          ),
        ),
      ),

      // Center(
      //   child: TextButton(
      //       onPressed: () {
      //         MyApp.of(context).authService.authenticated = true;
      //         onLoginCallback.call(true);
      //       },
      //       child: const Text('Tap to login')),
      // ),
    );
  }
}
