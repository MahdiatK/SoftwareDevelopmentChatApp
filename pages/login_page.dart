import 'package:flutter/material.dart';
import 'package:unity_main/components/textfield.dart';

class LoginPage extends StatelessWidget {
    const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Unity Logo
            Image.network(
              'https://i.postimg.cc/GtXyJgkf/Unity-Logo.png',
              height: 150,
            ),

            const SizedBox(height: 50),

            //Welcome back message
            Text(
              "WELCOME BACK",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            //Username field
            MyTextField(
              hintText: "Username",
              obscureText: false,
            ), 

            const SizedBox(height: 10),

            //Password field
             MyTextField(
               hintText: "Password",
               obscureText: true,
            ),

          ],
        ),
      ),
    );
  }
}
