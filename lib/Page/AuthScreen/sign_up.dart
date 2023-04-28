// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:ui/Components/Auth_Button/sign_up_button.dart';
import 'package:ui/Page/OTP_Screen/otp_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool validation = false;
  String radoi = 'Radio';
  final GlobalKey<FormState> _emailkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordkey = GlobalKey<FormState>();
  final TextEditingController emaiController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "We're glad to\n   have you!",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Form(
                    key: _emailkey,
                    child: TextFormField(
                      controller: emaiController,
                      onSaved: (value) {
                        emaiController.text;
                      },
                      decoration: InputDecoration(
                        // suffixIcon: const Icon(
                        //   Icons.check,
                        //   size: 20,
                        //   //color: Colors.black,
                        // ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                        isDense: true,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 207, 206, 206),
                        hintText: 'Name',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Eamil';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: _passwordkey,
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      onSaved: (value) {
                        passwordController.text;
                      },
                      decoration: InputDecoration(
                        // suffixIcon: const Icon(
                        //   Icons.visibility_off_sharp,
                        //   size: 20,
                        //   //color: Colors.black,
                        // ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                        isDense: true,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 207, 206, 206),
                        hintText: 'Email',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Password';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: emaiController,
                    onSaved: (value) {
                      emaiController.text;
                    },
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.visibility_off_sharp,
                        size: 20,
                        //color: Colors.black,
                      ),
                      contentPadding:
                          const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                      isDense: true,
                      filled: true,
                      fillColor: const Color.fromARGB(255, 207, 206, 206),
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Eamil';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: emaiController,
                    onSaved: (value) {
                      emaiController.text;
                    },
                    decoration: InputDecoration(
                      // suffixIcon: const Icon(
                      //   Icons.check,
                      //   size: 20,
                      //   //color: Colors.black,
                      // ),
                      contentPadding:
                          const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                      isDense: true,
                      filled: true,
                      fillColor: const Color.fromARGB(255, 207, 206, 206),
                      hintText: 'Country',
                      hintStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Eamil';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 10,
                      child: Radio(
                        value:
                            'I agree with the Terms of Service & Privacy Policy',
                        groupValue: radoi,
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        activeColor: Colors.blue,
                        onChanged: (value) {
                          //value may be true or false
                          setState(() {
                            radoi = value!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    const Text(
                      'I agree with the Terms of Service & Privacy Policy',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ]),
                  SignUpButton(
                    title: 'Sign Up',
                    Height: MediaQuery.of(context).size.height / 15,
                    Width: MediaQuery.of(context).size.width / 1.2,
                    Onpress: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const OTPScreen()),
                          (route) => false);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Have an account? Log in",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
