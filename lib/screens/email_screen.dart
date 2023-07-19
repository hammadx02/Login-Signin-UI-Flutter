import 'package:flutter/material.dart';

import '../components/buttons.dart';
import '../constents/constents.dart';

class EmailSignIn extends StatefulWidget {
  const EmailSignIn({super.key});

  @override
  State<EmailSignIn> createState() => _EmailSignInState();
}

class _EmailSignInState extends State<EmailSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        type: StepperType.horizontal,
        elevation: 0,
        steps: [
          Step(
            isActive: true,
            title: const Text(''),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'What\'s your email?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Enter the email address you want\n to use to register with XVER.IO',
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                  height: 10,
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Have an account?',
                    children: [
                      TextSpan(
                        text: ' Login here',
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 180,
                ),
                const SimpleButton(
                  color: themeColor,
                  title: 'Continue',
                  textColor: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '          By registering you accept our\n Terms & Conditions and Privacy Policy.',
                ),
                const SizedBox(
                  height: 80,
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
                      width: 15,
                    ),
                    Text(
                      'or continue with',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 15,
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
          const Step(
            isActive: true,
            title: Text(''),
            content: Text('Step 2'),
          ),
          const Step(
            isActive: true,
            title: Text(''),
            content: Text('Step 3'),
          ),
        ],
      ),
    );
  }
}
