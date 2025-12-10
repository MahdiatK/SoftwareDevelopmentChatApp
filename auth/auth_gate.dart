import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        strean: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {

          //user is logged in

          //user is NOT logged in
        }, 
      ),
    ):
  }
}
