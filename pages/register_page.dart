import 'package:flutter/material.dart';
import 'package:unity_main/services/auth/auth_service.dart';
import 'package:unity_main/components/textfield.dart';
import 'package:unity_main/components/my_button.dart';

class RegisterPage extends StatelessWidget {
   //Username and pw controllers
   final TextEditingController _emailController = TextEditingController();
   final TextEditingController _pwController = TextEditingController();
   final TextEditingController _confirmpwController = TextEditingController();

     //Tap to go to register page
    final void Function()? onTap;
  
  RegisterPage({super.key, required this.onTap});

  //Register method
  void register(BuildContext context) {
    // get auth service
    final _auth = AuthService();

    // Passwords match -> create user
    if (_pwController.text == _confirmpwController.text) {
      try {
        _auth.registerWithEmailPassword(
          _emailController.text, 
          _pwController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Login Failed'),
            content: Text(e.toString()),
          ),
        );
      }
    } 
    // Passwords do not match -> show error
    else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('Registration Failed'),
          content: Text('Passwords do not match'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1a1a1a),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            //Unity Logo
            Image.network(
              'https://i.postimg.cc/GtXyJgkf/Unity-Logo.png',
              height: 200,
            ),

            const SizedBox(height: 50),

            //Welcome back message
            Text(
              "Let's create an account for you",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            //Username field
            MyTextField(
              hintText: "email",
              obscureText: false,
              controller: _emailController,
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
              onTap: () => register(context),
            ),

            const SizedBox(height: 25),

            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: 
                  TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                    "Login now", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
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
