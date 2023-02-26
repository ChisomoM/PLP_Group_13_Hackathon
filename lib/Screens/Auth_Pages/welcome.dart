import 'package:flutter/material.dart';
import 'package:village_banking/utils/colors.dart';
import '../../utils/transitions.dart';
import 'sign_in.dart';
import 'sign_up.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  void navigateToSignIn() {
    Navigator.of(context).push(FadeRoute(page: SignIn()));
  }

  void navigateToSignUp() {
    Navigator.of(context).push(FadeRoute(page: SignUp()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 12.0, bottom: 36, left: 12, right: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 70.0, left: 18),
                child: Text(
                  'Welcome \nBack',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 18),
                    child: InkWell(
                      onTap: () => navigateToSignIn(),
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

                  //Sign up Button
                  InkWell(
                    onTap: () => navigateToSignUp(),
                    child: Container(
                      width: 315,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: const Color(0xFF1433FF)),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 24.0, top: 24, right: 24),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Sign up',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF1433FF)),
                            ),
                            Icon(Icons.arrow_forward, color: Color(0xFF1433FF)),
                          ],
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
