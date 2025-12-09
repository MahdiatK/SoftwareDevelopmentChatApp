import 'package:flutter/material.dart';

class RegisterPage extends statelessWidget {
  const RegisterPage({super.key});

  @override
  widget build(BuildContext context) {
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
              controller: _usernameController,
            ), 

            const SizedBox(height: 10),

            //Password field
             MyTextField(
               hintText: "Password",
               obscureText: true,
               controller: _pwController,
            ),

            const SizedBox(height: 25),

            // login button
            MyButton(
              text: "Login",
              onTap: login,
            ),

            const SizedBox(height: 25),

            //register now
            Row(
              mainAxisAlignment: MainAxis Alignment.center,
              children:
                Text("Not a member?"),
                style: 
                    TextStyle(colour: Theme.of(context).colourScheme.primary),
               ), // Text
               Text(
                 "Register now", 
                 style: Textstyle(
                   fontWeight: FontWeight.bold,
                   colour: Theme.of(context).colourScheme.primary),
                ),
        
            

          ],
        ),
      ),
    );
  }
}
