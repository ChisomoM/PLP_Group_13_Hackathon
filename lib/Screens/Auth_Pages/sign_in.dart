import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/text_input.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 12.0, bottom: 24, left: 20, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 70.0, left: 18),
                child: Text(
                  'Your path to \nawesome banking',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 40.0),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 88, 88, 88)),
                    ),
                  ),
                  //email
                  const Text('Email Address',
                      style: TextStyle(color: Color(0xFFB9B9B9))),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: TextFieldInput(
                        hintText: '',
                        isPass: false,
                        textInputType: TextInputType.emailAddress,
                        textEditingController: _emailController),
                  ),
                  //password
                  const Text('Password',
                      style:
                          TextStyle(color: Color.fromARGB(255, 206, 206, 206))),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: TextFieldInput(
                        hintText: '',
                        isPass: true,
                        textInputType: TextInputType.emailAddress,
                        textEditingController: _passwordController),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80.0),
                    child: Text('Forgot Password?',
                        style: TextStyle(color: mainBlue, fontSize: 15)),
                  ),
                  //sign in button
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 315,
                        height: 75,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 233, 139, 110),
                              mainBlue,
                              mainBlue
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.05, 0.8, 0.5],
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 24.0, top: 24, right: 24),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.white),
                            ],
                          ),
                        ),
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

// TextFieldInput(
//                   hintText: 'Enter Email Address',
//                   textEditingController: _emailController,
//                   textInputType: TextInputType.emailAddress),
