import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:village_banking/utils/colors.dart';
import '../../utils/transitions.dart';
import '../../widgets/text_input.dart';
import 'sign_in.dart';

class OTPPage1 extends StatefulWidget {
  OTPPage1({Key? key}) : super(key: key);

  @override
  State<OTPPage1> createState() => _OTPPage1State();
}

class _OTPPage1State extends State<OTPPage1> {
  final TextEditingController _numberController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _numberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/OTP.png",
                height: 233,
                width: 233,
              ),
              const SizedBox(
                height: 4,
                width: 500,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "OTP Verification",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  "We will send you a one time \npassword to this mobile number ",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  "Enter Mobile Number",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 36, right: 36, bottom: 120),
                    child: TextFieldInput(
                        hintText: '',
                        isPass: false,
                        textInputType: TextInputType.phone,
                        textEditingController: _numberController),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 1),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 315,
                        height: 75,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 95, 115, 243),
                              mainBlue
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.01, 1],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 24.0, top: 24, right: 24),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Verify',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
