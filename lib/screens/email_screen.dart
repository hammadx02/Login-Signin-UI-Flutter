import 'package:flutter/material.dart';
import 'package:validators/validators.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl/intl.dart';

import '../components/buttons.dart';
import '../constents/constents.dart';

class EmailSignIn extends StatefulWidget {
  const EmailSignIn({super.key});

  @override
  State<EmailSignIn> createState() => _EmailSignInState();
}

class _EmailSignInState extends State<EmailSignIn> {
  TextEditingController _date = TextEditingController();
  int currentStep = 0;
  onSteppedTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  bool isEmailCorrect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: currentStep,
        onStepTapped: onSteppedTapped,
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
                    onChanged: (val) {
                      setState(
                        () {
                          isEmailCorrect = isEmail(val);
                        },
                      );
                    },
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
                          color: isEmailCorrect == false
                              ? Colors.red
                              : Colors.green,
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
          Step(
            isActive: true,
            title: const Text(''),
            content: Column(
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: themeColor,
                      minRadius: 10,
                      maxRadius: 40,
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.person_add_alt_1_outlined,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Personal Details',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      hintStyle: const TextStyle(color: Colors.grey),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      hintStyle: const TextStyle(color: Colors.grey),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: IntlPhoneField(
                    languageCode: 'en',
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: const TextStyle(color: Colors.grey),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    controller: _date,
                    onTap: () async {
                      DateTime? pickeddate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                      );

                      if (pickeddate != null) {
                        setState(
                          () {
                            _date.text =
                                DateFormat('dd-MM-yyyy').format(pickeddate);
                          },
                        );
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'DOB',
                      hintStyle: const TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: const Icon(
                        Icons.calendar_month_outlined,
                      ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Address',
                      hintStyle: const TextStyle(color: Colors.grey),
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
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.symmetric(horizontal: 10.0),
                //       child: TextFormField(
                //         decoration: InputDecoration(
                //           hintText: 'City',
                //           hintStyle: const TextStyle(color: Colors.grey),
                //           fillColor: Colors.white,
                //           filled: true,
                //           enabledBorder: OutlineInputBorder(
                //             borderSide: const BorderSide(color: Colors.grey),
                //             borderRadius: BorderRadius.circular(10),
                //           ),
                //         ),
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.symmetric(horizontal: 10.0),
                //       child: TextFormField(
                //         decoration: InputDecoration(
                //           hintText: 'Postal Code',
                //           hintStyle: const TextStyle(color: Colors.grey),
                //           fillColor: Colors.white,
                //           filled: true,
                //           enabledBorder: OutlineInputBorder(
                //             borderSide: const BorderSide(color: Colors.grey),
                //             borderRadius: BorderRadius.circular(10),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
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
