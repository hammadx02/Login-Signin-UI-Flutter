import 'package:flutter/material.dart';
import 'package:login_ui/screens/pd_email_signup.dart';
import 'package:validators/validators.dart';

import '../components/buttons.dart';
import '../constents/constents.dart';

class SignupEmail extends StatefulWidget {
  const SignupEmail({super.key});

  @override
  State<SignupEmail> createState() => _SignupEmailState();
}

class _SignupEmailState extends State<SignupEmail> {
  bool isEmailCorrect = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(left: 12.0, right: 70, top: 12, bottom: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 28,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    CircleAvatar(
                      maxRadius: 16,
                      backgroundColor: themeColor,
                      child: ClipOval(
                        child: CircleAvatar(
                          maxRadius: 14,
                          backgroundColor: Colors.white,
                          child: Text(
                            '1',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    CircleAvatar(
                      maxRadius: 16,
                      backgroundColor: Colors.grey,
                      child: ClipOval(
                        child: CircleAvatar(
                          maxRadius: 14,
                          backgroundColor: Colors.white,
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    CircleAvatar(
                      maxRadius: 16,
                      backgroundColor: Colors.grey,
                      child: ClipOval(
                        child: CircleAvatar(
                          maxRadius: 14,
                          backgroundColor: Colors.white,
                          child: Text(
                            '3',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                  onChanged: (val) {
                    setState(
                      () {
                        isEmailCorrect = isEmail(val);
                      },
                    );
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email address',
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                    ),
                    suffixIcon: isEmailCorrect == false
                        ? const Icon(
                            Icons.close_rounded,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.check_circle_outline_outlined,
                            color: Colors.green,
                          ),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            isEmailCorrect == false ? Colors.red : Colors.green,
                        width: 2,
                      ),
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
                  style: TextStyle(color: Colors.black),
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PdEmailSignup(),
                    ),
                  );
                },
                child: const SimpleButton(
                  color: themeColor,
                  title: 'Continue',
                  textColor: Colors.white,
                ),
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
      ),
    );
  }
}
