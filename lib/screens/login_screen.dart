import 'package:flutter/material.dart';
import 'package:login_ui/components/buttons.dart';
import 'package:login_ui/screens/email_screen.dart';
import 'package:login_ui/screens/signin_screen.dart';

import '../constents/constents.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Image(
              image: AssetImage('images/logo.png'),
              height: 250,
              width: 250,
            ),
            const ButtonThatUsedIcon(
              color: Colors.white,
              asset: 'images/facebook.png',
              title: 'Continue with Facebook',
            ),
            const ButtonThatUsedIcon(
              color: Colors.white,
              asset: 'images/google.png',
              title: 'Continue with Google',
            ),
            const ButtonThatUsedIcon(
              color: Colors.white,
              asset: 'images/apple.png',
              title: 'Continue with Google',
            ),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => EmailSignIn()));},
              child:  const SimpleButton(
                color: Colors.deepPurple,
                title: 'Sign up with email',
                textColor: Colors.white,
              ),
            ),
            const SimpleButton(
              color: Colors.deepPurple,
              title: 'Sign up with mobile',
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 50,
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Already have an account?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInScreen(),
                  ),
                );
              },
              child: const SimpleButton(
                color: Colors.white,
                title: 'Sign In',
                textColor: themeColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
