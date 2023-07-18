import 'package:flutter/material.dart';
import 'package:login_ui/multi_switch.dart';

class SignInScreen extends StatefulWidget {
  static const String id = 'signin_screen';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Image(
                image: AssetImage('images/logo.png'),
                height: 250,
                width: 250,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email address',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              text: const TextSpan(
                text: 'Forgot your password?',
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(
                    text: ' Click here',
                    style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(color: Colors.grey[800], fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Unlock with Fingerprint?'),
                SizedBox(
                  width: 5,
                ),
                MultiSwitch(),
              ],
            ),
            const SizedBox(
              height: 60,
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
                  width: 10,
                ),
                Text(
                  'or continue with',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 10,
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Center(
                    child: Image(
                      image: AssetImage(
                        'images/facebook.png',
                      ),
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Center(
                    child: Image(
                      image: AssetImage(
                        'images/apple.png',
                      ),
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Center(
                    child: Image(
                      image: AssetImage(
                        'images/google.png',
                      ),
                      height: 20,
                      width: 20,
                    ),
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
