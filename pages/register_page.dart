import 'package:flutter/material.dart';
import 'package:unity_main/components/textfield.dart';
import 'package:unity_main/components/my_button.dart';

class RegisterPage extends StatelessWidget {
   //Username and pw controllers
   final TextEditingController _usernameController = TextEditingController();
   final TextEditingController _pwController = TextEditingController();
   final TextEditingController _confirmpwController = TextEditingController();

     //Tap to go to register page
    final void Function()? onTap;
  
  RegisterPage({super.key, required this.onTap});

  //Register method
  void register() {}

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
              "Let's create an account for you",
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
              controller: _usernameController,
            ), 

            const SizedBox(height: 10),

            //Password field
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwController,
            ),

            const SizedBox(height: 10),

            // Confirm Password field
            MyTextField(
              hintText: "Confirm password",
              obscureText: true,
              controller: _confirmpwController,
            ),

            const SizedBox(height: 25),

            // login button
            MyButton(
              text: "Register",
              onTap: register,
            ),

            const SizedBox(height: 25),

            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: 
                  TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login now", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ],   
            ),
          ],
        ),
      ),
    );
  }
}
